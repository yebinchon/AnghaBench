; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_add1.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_test_evbuffer_add1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_evbuffer_add1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_evbuffer_add1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %5, %struct.evbuffer** %3, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = call i32 @evbuffer_add(%struct.evbuffer* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %9 = call i32 @evbuffer_validate(%struct.evbuffer* %8)
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = call i32 @evbuffer_expand(%struct.evbuffer* %10, i32 2048)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = call i32 @evbuffer_validate(%struct.evbuffer* %12)
  %14 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %15 = call i32 @evbuffer_add(%struct.evbuffer* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %17 = call i32 @evbuffer_validate(%struct.evbuffer* %16)
  %18 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %19 = call i32 @evbuffer_add_printf(%struct.evbuffer* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %21 = call i32 @evbuffer_validate(%struct.evbuffer* %20)
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = call i32 @evbuffer_get_length(%struct.evbuffer* %22)
  %24 = icmp eq i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = call i32 @tt_assert(i32 %25)
  %27 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %28 = call i64 @evbuffer_pullup(%struct.evbuffer* %27, i32 -1)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 49
  %35 = zext i1 %34 to i32
  %36 = call i32 @tt_assert(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 50
  %42 = zext i1 %41 to i32
  %43 = call i32 @tt_assert(i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 51
  %49 = zext i1 %48 to i32
  %50 = call i32 @tt_assert(i32 %49)
  br label %51

51:                                               ; preds = %1
  %52 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %53 = call i32 @evbuffer_free(%struct.evbuffer* %52)
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_validate(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_expand(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i64 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
