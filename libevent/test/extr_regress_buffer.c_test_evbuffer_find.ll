; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_find.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"1234567890\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1234567890\0D\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@EVBUFFER_INITIAL_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_find(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.evbuffer*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %9 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %9, %struct.evbuffer** %8, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %11 = call i32 @tt_assert(%struct.evbuffer* %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @evbuffer_add(%struct.evbuffer* %12, i8* %13, i32 %15)
  %17 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %18 = call i32 @evbuffer_validate(%struct.evbuffer* %17)
  %19 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @evbuffer_drain(%struct.evbuffer* %19, i32 %21)
  %23 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %24 = call i32 @evbuffer_validate(%struct.evbuffer* %23)
  %25 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @evbuffer_add(%struct.evbuffer* %25, i8* %26, i32 %28)
  %30 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %31 = call i32 @evbuffer_validate(%struct.evbuffer* %30)
  %32 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %33 = call i8* @evbuffer_find(%struct.evbuffer* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = icmp eq i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @tt_want(i32 %36)
  %38 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @evbuffer_drain(%struct.evbuffer* %38, i32 %40)
  %42 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %43 = call i32 @evbuffer_validate(%struct.evbuffer* %42)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %51, %1
  %45 = load i32, i32* %7, align 4
  %46 = icmp ult i32 %45, 256
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %49
  store i8 97, i8* %50, align 1
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %44

54:                                               ; preds = %44
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255
  store i8 120, i8* %55, align 1
  %56 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %58 = call i32 @evbuffer_add(%struct.evbuffer* %56, i8* %57, i32 256)
  %59 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %60 = call i32 @evbuffer_validate(%struct.evbuffer* %59)
  %61 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %62 = call i8* @evbuffer_find(%struct.evbuffer* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  store i8* %62, i8** %3, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = icmp eq i8* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @tt_want(i32 %65)
  %67 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %68 = call i8* @evbuffer_find(%struct.evbuffer* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i8* %68, i8** %3, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.evbuffer*
  %74 = call i32 @tt_assert(%struct.evbuffer* %73)
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @tt_want(i32 %78)
  br label %80

80:                                               ; preds = %54
  %81 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %82 = icmp ne %struct.evbuffer* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %85 = call i32 @evbuffer_free(%struct.evbuffer* %84)
  br label %86

86:                                               ; preds = %83, %80
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @tt_assert(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i8* @evbuffer_find(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @tt_want(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
