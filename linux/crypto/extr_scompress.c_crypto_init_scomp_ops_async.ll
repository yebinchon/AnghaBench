; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_init_scomp_ops_async.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_scompress.c_crypto_init_scomp_ops_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg* }
%struct.crypto_alg = type { i32 }
%struct.crypto_acomp = type { i32, i32, i32, i32 }
%struct.crypto_scomp = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@crypto_scomp_type = common dso_local global i32 0, align 4
@crypto_exit_scomp_ops_async = common dso_local global i32 0, align 4
@scomp_acomp_compress = common dso_local global i32 0, align 4
@scomp_acomp_decompress = common dso_local global i32 0, align 4
@sgl_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_scomp_ops_async(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_acomp*, align 8
  %6 = alloca %struct.crypto_scomp**, align 8
  %7 = alloca %struct.crypto_scomp*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %8, i32 0, i32 1
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  store %struct.crypto_alg* %10, %struct.crypto_alg** %4, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = call %struct.crypto_acomp* @__crypto_acomp_tfm(%struct.crypto_tfm* %11)
  store %struct.crypto_acomp* %12, %struct.crypto_acomp** %5, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %14 = call %struct.crypto_scomp** @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.crypto_scomp** %14, %struct.crypto_scomp*** %6, align 8
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %16 = call i32 @crypto_mod_get(%struct.crypto_alg* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %23 = call %struct.crypto_scomp* @crypto_create_tfm(%struct.crypto_alg* %22, i32* @crypto_scomp_type)
  store %struct.crypto_scomp* %23, %struct.crypto_scomp** %7, align 8
  %24 = load %struct.crypto_scomp*, %struct.crypto_scomp** %7, align 8
  %25 = call i64 @IS_ERR(%struct.crypto_scomp* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %29 = call i32 @crypto_mod_put(%struct.crypto_alg* %28)
  %30 = load %struct.crypto_scomp*, %struct.crypto_scomp** %7, align 8
  %31 = call i32 @PTR_ERR(%struct.crypto_scomp* %30)
  store i32 %31, i32* %2, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.crypto_scomp*, %struct.crypto_scomp** %7, align 8
  %34 = load %struct.crypto_scomp**, %struct.crypto_scomp*** %6, align 8
  store %struct.crypto_scomp* %33, %struct.crypto_scomp** %34, align 8
  %35 = load i32, i32* @crypto_exit_scomp_ops_async, align 4
  %36 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %37 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @scomp_acomp_compress, align 4
  %39 = load %struct.crypto_acomp*, %struct.crypto_acomp** %5, align 8
  %40 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @scomp_acomp_decompress, align 4
  %42 = load %struct.crypto_acomp*, %struct.crypto_acomp** %5, align 8
  %43 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @sgl_free, align 4
  %45 = load %struct.crypto_acomp*, %struct.crypto_acomp** %5, align 8
  %46 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.crypto_acomp*, %struct.crypto_acomp** %5, align 8
  %48 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %47, i32 0, i32 0
  store i32 8, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %32, %27, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.crypto_acomp* @__crypto_acomp_tfm(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_scomp** @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_scomp* @crypto_create_tfm(%struct.crypto_alg*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_scomp*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_scomp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
