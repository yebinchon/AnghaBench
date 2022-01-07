; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_x25519.c_x25519_derive_secret.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_x25519.c_x25519_derive_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@X25519_KEY_SIZE = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32*)* @x25519_derive_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25519_derive_secret(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* @X25519_KEY_SIZE, align 4
  %13 = call i32* @malloc(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = icmp eq i32* %13, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %18, i32* %6, align 4
  br label %43

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32* [ %26, %25 ], [ %28, %27 ]
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** %9, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32* [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @cf_curve25519_mul(i32* %22, i32* %30, i32* %38)
  %40 = load i32, i32* @X25519_KEY_SIZE, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %17
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @cf_curve25519_mul(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
