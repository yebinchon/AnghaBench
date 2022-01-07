; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_cli.c_show_attrs.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_cli.c_show_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i64, i8*, %struct.switch_attr* }
%struct.switch_val = type { i32 }

@SWITCH_TYPE_NOVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"\09%s: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @show_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_attrs(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  br label %7

7:                                                ; preds = %34, %3
  %8 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  %9 = icmp ne %struct.switch_attr* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  %12 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SWITCH_TYPE_NOVAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  %18 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %22 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  %23 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %24 = call i64 @swlib_get_attr(%struct.switch_dev* %21, %struct.switch_attr* %22, %struct.switch_val* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %32

28:                                               ; preds = %16
  %29 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  %30 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %31 = call i32 @print_attr_val(%struct.switch_attr* %29, %struct.switch_val* %30)
  br label %32

32:                                               ; preds = %28, %26
  %33 = call i32 @putchar(i8 signext 10)
  br label %34

34:                                               ; preds = %32, %10
  %35 = load %struct.switch_attr*, %struct.switch_attr** %5, align 8
  %36 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %35, i32 0, i32 2
  %37 = load %struct.switch_attr*, %struct.switch_attr** %36, align 8
  store %struct.switch_attr* %37, %struct.switch_attr** %5, align 8
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @swlib_get_attr(%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*) #1

declare dso_local i32 @print_attr_val(%struct.switch_attr*, %struct.switch_val*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
