; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_empty_reference_prepend_buffer.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_empty_reference_prepend_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_empty_reference_prepend_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_empty_reference_prepend_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.evbuffer* null, %struct.evbuffer** %3, align 8
  store %struct.evbuffer* null, %struct.evbuffer** %4, align 8
  %5 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %5, %struct.evbuffer** %3, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = ptrtoint %struct.evbuffer* %6 to i32
  %8 = call i32 @tt_assert(i32 %7)
  %9 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %9, %struct.evbuffer** %4, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = ptrtoint %struct.evbuffer* %10 to i32
  %12 = call i32 @tt_assert(i32 %11)
  %13 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %14 = call i32 @evbuffer_add_reference(%struct.evbuffer* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  %15 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %16 = call i32 @evbuffer_validate(%struct.evbuffer* %15)
  %17 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %18 = call i32 @evbuffer_add(%struct.evbuffer* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %19 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %20 = call i32 @evbuffer_validate(%struct.evbuffer* %19)
  %21 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = call i32 @evbuffer_prepend_buffer(%struct.evbuffer* %21, %struct.evbuffer* %22)
  %24 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %25 = call i32 @evbuffer_validate(%struct.evbuffer* %24)
  %26 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %27 = call i64 @evbuffer_pullup(%struct.evbuffer* %26, i32 -1)
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @tt_assert(i32 %32)
  %34 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %35 = call i32 @evbuffer_validate(%struct.evbuffer* %34)
  %36 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %37 = call i64 @evbuffer_pullup(%struct.evbuffer* %36, i32 -1)
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @tt_assert(i32 %42)
  %44 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %45 = call i32 @evbuffer_validate(%struct.evbuffer* %44)
  br label %46

46:                                               ; preds = %1
  %47 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %48 = icmp ne %struct.evbuffer* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %51 = call i32 @evbuffer_free(%struct.evbuffer* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %54 = icmp ne %struct.evbuffer* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %57 = call i32 @evbuffer_free(%struct.evbuffer* %56)
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evbuffer_add_reference(%struct.evbuffer*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_prepend_buffer(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
