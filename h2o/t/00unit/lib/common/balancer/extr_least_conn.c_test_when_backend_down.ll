; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_least_conn.c_test_when_backend_down.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_least_conn.c_test_when_backend_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_when_backend_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_when_backend_down() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 @gen_targets(i32 10)
  store i32 %6, i32* %1, align 4
  %7 = bitcast [10 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 10, i1 false)
  %8 = call i32* (...) @h2o_balancer_create_lc()
  store i32* %8, i32** %5, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %34, %0
  %10 = load i64, i64* %3, align 8
  %11 = icmp ult i64 %10, 10
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %15 = call i64 @selector(i32* %13, i32* %1, i8* %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %19, 10
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 %32
  store i8 1, i8* %33, align 1
  br label %34

34:                                               ; preds = %21
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %9

37:                                               ; preds = %9
  %38 = call i32 @free_targets(i32* %1)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @destroy(i32* %39)
  ret void
}

declare dso_local i32 @gen_targets(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @h2o_balancer_create_lc(...) #1

declare dso_local i64 @selector(i32*, i32*, i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @free_targets(i32*) #1

declare dso_local i32 @destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
