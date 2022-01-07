; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_add2.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_add2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@test_evbuffer_add2.data = internal global [4096 x i8] zeroinitializer, align 16
@MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@EVBUFFER_CHAIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_add2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_add2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MIN_BUFFER_SIZE, align 4
  %8 = load i32, i32* @EVBUFFER_CHAIN_SIZE, align 4
  %9 = sub nsw i32 %7, %8
  %10 = sub nsw i32 %9, 10
  store i32 %10, i32* %4, align 4
  %11 = call i32 @memset(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_evbuffer_add2.data, i64 0, i64 0), i8 signext 80, i32 4096)
  %12 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %12, %struct.evbuffer** %3, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @evbuffer_add(%struct.evbuffer* %13, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_evbuffer_add2.data, i64 0, i64 0), i32 %14)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %17 = call i32 @evbuffer_validate(%struct.evbuffer* %16)
  %18 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %19 = call i32 @evbuffer_expand(%struct.evbuffer* %18, i32 100)
  %20 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %21 = call i32 @evbuffer_validate(%struct.evbuffer* %20)
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = call i32 @evbuffer_add(%struct.evbuffer* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %24 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %25 = call i32 @evbuffer_validate(%struct.evbuffer* %24)
  %26 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %27 = call i32 @evbuffer_add_printf(%struct.evbuffer* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %29 = call i32 @evbuffer_validate(%struct.evbuffer* %28)
  %30 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %31 = call i32 @evbuffer_get_length(%struct.evbuffer* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 2
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @tt_assert(i32 %36)
  %38 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %39 = call i64 @evbuffer_pullup(%struct.evbuffer* %38, i32 -1)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 80
  %49 = zext i1 %48 to i32
  %50 = call i32 @tt_assert(i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 50
  %59 = zext i1 %58 to i32
  %60 = call i32 @tt_assert(i32 %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 51
  %69 = zext i1 %68 to i32
  %70 = call i32 @tt_assert(i32 %69)
  br label %71

71:                                               ; preds = %1
  %72 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %73 = call i32 @evbuffer_free(%struct.evbuffer* %72)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_expand(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
