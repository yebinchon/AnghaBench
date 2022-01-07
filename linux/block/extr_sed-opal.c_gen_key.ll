; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_gen_key.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_gen_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32*, i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opalmethod = common dso_local global i32* null, align 8
@OPAL_GENKEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Error building gen key command\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @gen_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_key(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %15 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = mul nuw i64 4, %11
  %18 = trunc i64 %17 to i32
  %19 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %20 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @min(i32 %18, i32 %21)
  %23 = call i32 @memcpy(i32* %13, i32* %16, i32 %22)
  %24 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %25 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %29 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %31 = load i32*, i32** @opalmethod, align 8
  %32 = load i64, i64* @OPAL_GENKEY, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cmd_start(%struct.opal_dev* %30, i32* %13, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %43 = load i32, i32* @parse_and_check_status, align 4
  %44 = call i32 @finalize_and_send(%struct.opal_dev* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
