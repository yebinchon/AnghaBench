; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_planetcore.c_planetcore_set_stdout_path.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_planetcore.c_planetcore_set_stdout_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLANETCORE_KEY_SERIAL_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"linux,planetcore-label\00", align 1
@prop_buf = common dso_local global i32 0, align 4
@MAX_PROP_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @planetcore_set_stdout_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @PLANETCORE_KEY_SERIAL_PORT, align 4
  %9 = call i8* @planetcore_get_key(i8* %7, i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %41

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @find_node_by_prop_value_str(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %41

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @prop_buf, align 4
  %22 = load i32, i32* @MAX_PROP_LEN, align 4
  %23 = call i8* @get_path(i8* %20, i32 %21, i32 %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %41

27:                                               ; preds = %19
  %28 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i8* @create_node(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @setprop_str(i8* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %36, %26, %18, %12
  ret void
}

declare dso_local i8* @planetcore_get_key(i8*, i32) #1

declare dso_local i8* @find_node_by_prop_value_str(i32*, i8*, i8*) #1

declare dso_local i8* @get_path(i8*, i32, i32) #1

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i8* @create_node(i32*, i8*) #1

declare dso_local i32 @setprop_str(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
