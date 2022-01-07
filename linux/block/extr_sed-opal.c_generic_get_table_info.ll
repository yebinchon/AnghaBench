; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_get_table_info.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_generic_get_table_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_TABLE_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i32, i32)* @generic_get_table_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_get_table_info(%struct.opal_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** @opaluid, align 8
  %17 = load i64, i64* @OPAL_TABLE_TABLE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @memcpy(i32* %13, i32 %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %13, i64 %23
  %25 = load i32*, i32** @opaluid, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @memcpy(i32* %24, i32 %29, i32 %30)
  %32 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @generic_get_column(%struct.opal_dev* %32, i32* %13, i32 %33)
  %35 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %35)
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @generic_get_column(%struct.opal_dev*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
