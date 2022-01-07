; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_build_cipher_test_sglists.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_build_cipher_test_sglists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_test_sglists = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.testvec_config = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.kvec = type { i32 }
%struct.iov_iter = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cipher_test_sglists*, %struct.testvec_config*, i32, i32, i32, %struct.kvec*, i32)* @build_cipher_test_sglists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_cipher_test_sglists(%struct.cipher_test_sglists* %0, %struct.testvec_config* %1, i32 %2, i32 %3, i32 %4, %struct.kvec* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cipher_test_sglists*, align 8
  %10 = alloca %struct.testvec_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iov_iter, align 4
  %17 = alloca i32, align 4
  store %struct.cipher_test_sglists* %0, %struct.cipher_test_sglists** %9, align 8
  store %struct.testvec_config* %1, %struct.testvec_config** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.kvec* %5, %struct.kvec** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @WRITE, align 4
  %19 = load %struct.kvec*, %struct.kvec** %14, align 8
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @iov_iter_kvec(%struct.iov_iter* %16, i32 %18, %struct.kvec* %19, i32 %20, i32 %21)
  %23 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %9, align 8
  %24 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %23, i32 0, i32 1
  %25 = load %struct.testvec_config*, %struct.testvec_config** %10, align 8
  %26 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.testvec_config*, %struct.testvec_config** %10, align 8
  %30 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %7
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @max(i32 %34, i32 %35)
  br label %39

37:                                               ; preds = %7
  %38 = load i32, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %36, %33 ], [ %38, %37 ]
  %41 = call i32 @build_test_sglist(%struct.TYPE_3__* %24, %struct.TYPE_4__* %27, i32 %28, i32 %40, %struct.iov_iter* %16, i32* null)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %8, align 4
  br label %89

46:                                               ; preds = %39
  %47 = load %struct.testvec_config*, %struct.testvec_config** %10, align 8
  %48 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %9, align 8
  %53 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %9, align 8
  %57 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %9, align 8
  %60 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %9, align 8
  %64 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  store i32 0, i32* %8, align 4
  br label %89

66:                                               ; preds = %46
  %67 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %9, align 8
  %68 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %67, i32 0, i32 0
  %69 = load %struct.testvec_config*, %struct.testvec_config** %10, align 8
  %70 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.testvec_config*, %struct.testvec_config** %10, align 8
  %78 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  br label %84

80:                                               ; preds = %66
  %81 = load %struct.testvec_config*, %struct.testvec_config** %10, align 8
  %82 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi %struct.TYPE_4__* [ %79, %76 ], [ %83, %80 ]
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @build_test_sglist(%struct.TYPE_3__* %68, %struct.TYPE_4__* %85, i32 %86, i32 %87, %struct.iov_iter* null, i32* null)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84, %51, %44
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @build_test_sglist(%struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32, %struct.iov_iter*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
