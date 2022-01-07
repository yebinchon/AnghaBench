; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-async.c_test_async.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-async.c_test_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@worker_async_cb = common dso_local global i32 0, align 4
@main_async_cb = common dso_local global i32 0, align 4
@worker = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@NUM_PINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"async%d: %.2f sec (%s/sec)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_async(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctx*, align 8
  %4 = alloca %struct.ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ctx* @calloc(i32 %7, i32 36)
  store %struct.ctx* %8, %struct.ctx** %3, align 8
  %9 = load %struct.ctx*, %struct.ctx** %3, align 8
  %10 = icmp ne %struct.ctx* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %56, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = load %struct.ctx*, %struct.ctx** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ctx, %struct.ctx* %18, i64 %20
  store %struct.ctx* %21, %struct.ctx** %4, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.ctx*, %struct.ctx** %4, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ctx*, %struct.ctx** %4, align 8
  %26 = getelementptr inbounds %struct.ctx, %struct.ctx* %25, i32 0, i32 8
  %27 = call i64 @uv_loop_init(i32* %26)
  %28 = icmp eq i64 0, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.ctx*, %struct.ctx** %4, align 8
  %32 = getelementptr inbounds %struct.ctx, %struct.ctx* %31, i32 0, i32 8
  %33 = load %struct.ctx*, %struct.ctx** %4, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 7
  %35 = load i32, i32* @worker_async_cb, align 4
  %36 = call i64 @uv_async_init(i32* %32, i32* %34, i32 %35)
  %37 = icmp eq i64 0, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = call i32* (...) @uv_default_loop()
  %41 = load %struct.ctx*, %struct.ctx** %4, align 8
  %42 = getelementptr inbounds %struct.ctx, %struct.ctx* %41, i32 0, i32 6
  %43 = load i32, i32* @main_async_cb, align 4
  %44 = call i64 @uv_async_init(i32* %40, i32* %42, i32 %43)
  %45 = icmp eq i64 0, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.ctx*, %struct.ctx** %4, align 8
  %49 = getelementptr inbounds %struct.ctx, %struct.ctx* %48, i32 0, i32 5
  %50 = load i32, i32* @worker, align 4
  %51 = load %struct.ctx*, %struct.ctx** %4, align 8
  %52 = call i64 @uv_thread_create(i32* %49, i32 %50, %struct.ctx* %51)
  %53 = icmp eq i64 0, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  br label %56

56:                                               ; preds = %17
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %13

59:                                               ; preds = %13
  %60 = call i32 (...) @uv_hrtime()
  store i32 %60, i32* %5, align 4
  %61 = call i32* (...) @uv_default_loop()
  %62 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %63 = call i64 @uv_run(i32* %61, i32 %62)
  %64 = icmp eq i64 0, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %81, %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.ctx*, %struct.ctx** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ctx, %struct.ctx* %72, i64 %74
  %76 = getelementptr inbounds %struct.ctx, %struct.ctx* %75, i32 0, i32 5
  %77 = call i64 @uv_thread_join(i32* %76)
  %78 = icmp eq i64 0, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %67

84:                                               ; preds = %67
  %85 = call i32 (...) @uv_hrtime()
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %125, %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load %struct.ctx*, %struct.ctx** %3, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ctx, %struct.ctx* %93, i64 %95
  store %struct.ctx* %96, %struct.ctx** %4, align 8
  %97 = load %struct.ctx*, %struct.ctx** %4, align 8
  %98 = getelementptr inbounds %struct.ctx, %struct.ctx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NUM_PINGS, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load %struct.ctx*, %struct.ctx** %4, align 8
  %105 = getelementptr inbounds %struct.ctx, %struct.ctx* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NUM_PINGS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @ASSERT(i32 %109)
  %111 = load %struct.ctx*, %struct.ctx** %4, align 8
  %112 = getelementptr inbounds %struct.ctx, %struct.ctx* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NUM_PINGS, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load %struct.ctx*, %struct.ctx** %4, align 8
  %119 = getelementptr inbounds %struct.ctx, %struct.ctx* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NUM_PINGS, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @ASSERT(i32 %123)
  br label %125

125:                                              ; preds = %92
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %88

128:                                              ; preds = %88
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sitofp i32 %130 to double
  %132 = fdiv double %131, 1.000000e+09
  %133 = fptosi double %132 to i32
  %134 = load i32, i32* @NUM_PINGS, align 4
  %135 = sitofp i32 %134 to double
  %136 = load i32, i32* %5, align 4
  %137 = sitofp i32 %136 to double
  %138 = fdiv double %137, 1.000000e+09
  %139 = fdiv double %135, %138
  %140 = fptosi double %139 to i32
  %141 = call i8* @fmt(i32 %140)
  %142 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %133, i8* %141)
  %143 = load %struct.ctx*, %struct.ctx** %3, align 8
  %144 = call i32 @free(%struct.ctx* %143)
  %145 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local %struct.ctx* @calloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_loop_init(i32*) #1

declare dso_local i64 @uv_async_init(i32*, i32*, i32) #1

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local i64 @uv_thread_create(i32*, i32, %struct.ctx*) #1

declare dso_local i32 @uv_hrtime(...) #1

declare dso_local i64 @uv_run(i32*, i32) #1

declare dso_local i64 @uv_thread_join(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

declare dso_local i8* @fmt(i32) #1

declare dso_local i32 @free(%struct.ctx*) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
