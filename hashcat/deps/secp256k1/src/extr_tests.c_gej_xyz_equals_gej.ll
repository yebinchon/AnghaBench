; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_gej_xyz_equals_gej.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_gej_xyz_equals_gej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gej_xyz_equals_gej(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = bitcast %struct.TYPE_4__* %5 to i8*
  %28 = bitcast %struct.TYPE_4__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = bitcast %struct.TYPE_4__* %6 to i8*
  %31 = bitcast %struct.TYPE_4__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %33 = call i32 @secp256k1_fe_normalize(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %35 = call i32 @secp256k1_fe_normalize(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %37 = call i32 @secp256k1_fe_normalize(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %39 = call i32 @secp256k1_fe_normalize(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %41 = call i32 @secp256k1_fe_normalize(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %43 = call i32 @secp256k1_fe_normalize(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %46 = call i64 @secp256k1_fe_cmp_var(i32* %44, i32* %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %53 = call i64 @secp256k1_fe_cmp_var(i32* %51, i32* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %60 = call i64 @secp256k1_fe_cmp_var(i32* %58, i32* %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %25, %20, %2
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_fe_normalize(i32*) #2

declare dso_local i64 @secp256k1_fe_cmp_var(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
