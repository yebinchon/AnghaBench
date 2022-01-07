; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_send_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_send.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@YRMCDS_COMPRESS_FAILED = common dso_local global i32 0, align 4
@YRMCDS_FLAG_COMPRESS = common dso_local global i32 0, align 4
@YRMCDS_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i64, i8*, i64, i32, i32, i32, i32*)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_data(%struct.TYPE_4__* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [8 x i8], align 1
  %24 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %10
  %28 = load i8*, i8** %14, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %15, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %16, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %17, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %33, %30, %27, %10
  %40 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %40, i32* %11, align 4
  br label %65

41:                                               ; preds = %36
  store i32 0, i32* %22, align 4
  %42 = load i32, i32* %18, align 4
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %44 = call i32 @hton32(i32 %42, i8* %43)
  %45 = load i32, i32* %19, align 4
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 4
  %47 = call i32 @hton32(i32 %45, i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load i32*, i32** %21, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %55 = load i64, i64* %17, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 @send_command(%struct.TYPE_4__* %48, i32 %49, i32 %50, i32* %51, i64 %52, i8* %53, i32 8, i8* %54, i64 %55, i8* %56)
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* %24, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %39
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @hton32(i32, i8*) #1

declare dso_local i32 @send_command(%struct.TYPE_4__*, i32, i32, i32*, i64, i8*, i32, i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
