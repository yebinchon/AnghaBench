; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_keys.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_yrmcds_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@YRMCDS_CMD_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_keys(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %12
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15, %4
  %25 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %21, %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @YRMCDS_NOT_IMPLEMENTED, align 4
  store i32 %32, i32* %5, align 4
  br label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = load i32, i32* @YRMCDS_CMD_KEYS, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @send_command(%struct.TYPE_4__* %34, i32 %35, i32 0, i32* %36, i64 %37, i8* %38, i32 0, i32* null, i32 0, i32* null)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %31, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @send_command(%struct.TYPE_4__*, i32, i32, i32*, i64, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
