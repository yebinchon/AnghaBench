; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_internal.c_bench_setup.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_internal.c_bench_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bench_setup.init_x = internal constant [32 x i8] c"\02\03\05\07\0B\0D\11\13\17\1D\1F%)+/5;=CGIOSYaegkmq\7F\83", align 16
@bench_setup.init_y = internal constant [32 x i8] c"\82\83\85\87\8B\8D\81\83\97\AD\AF\B5\B9\BB\BF\C5\DB\DD\E3\E7\E9\EF\F3\F9\11\15\17\1B\1D\B1\BF\D3", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bench_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 8
  %8 = call i32 @secp256k1_scalar_set_b32(i32* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @bench_setup.init_x, i64 0, i64 0), i32* null)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 7
  %11 = call i32 @secp256k1_scalar_set_b32(i32* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @bench_setup.init_y, i64 0, i64 0), i32* null)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  %14 = call i32 @secp256k1_fe_set_b32(i32* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @bench_setup.init_x, i64 0, i64 0))
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = call i32 @secp256k1_fe_set_b32(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @bench_setup.init_y, i64 0, i64 0))
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 6
  %22 = call i32 @secp256k1_ge_set_xo_var(i32* %19, i32* %21, i32 0)
  %23 = call i32 @CHECK(i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = call i32 @secp256k1_ge_set_xo_var(i32* %25, i32* %27, i32 1)
  %29 = call i32 @CHECK(i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = call i32 @secp256k1_gej_set_ge(i32* %31, i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @secp256k1_gej_set_ge(i32* %36, i32* %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @bench_setup.init_x, i64 0, i64 0), i32 32)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 32
  %48 = call i32 @memcpy(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @bench_setup.init_y, i64 0, i64 0), i32 32)
  ret void
}

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i32 @secp256k1_fe_set_b32(i32*, i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ge_set_xo_var(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
