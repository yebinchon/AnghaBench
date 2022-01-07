; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_group_impl.h_secp256k1_ge_globalz_set_table_gej.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_group_impl.h_secp256k1_ge_globalz_set_table_gej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_8__*, i32*, %struct.TYPE_7__*, i32*)* @secp256k1_ge_globalz_set_table_gej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ge_globalz_set_table_gej(i64 %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = call i32 @secp256k1_fe_normalize_weak(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %68, %17
  %56 = load i64, i64* %11, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, 1
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @secp256k1_fe_mul(i32* %12, i32* %12, i32* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %11, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = call i32 @secp256k1_ge_set_gej_zinv(%struct.TYPE_8__* %73, %struct.TYPE_7__* %76, i32* %12)
  br label %55

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78, %5
  ret void
}

declare dso_local i32 @secp256k1_fe_normalize_weak(i32*) #1

declare dso_local i32 @secp256k1_fe_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej_zinv(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
