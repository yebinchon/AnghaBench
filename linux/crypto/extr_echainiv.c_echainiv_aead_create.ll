; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_echainiv.c_echainiv_aead_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_echainiv.c_echainiv_aead_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }
%struct.aead_instance = type { i32 (%struct.aead_instance*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@echainiv_encrypt = common dso_local global i32 0, align 4
@echainiv_decrypt = common dso_local global i32 0, align 4
@aead_init_geniv = common dso_local global i32 0, align 4
@aead_exit_geniv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @echainiv_aead_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echainiv_aead_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_template*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca %struct.aead_instance*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  %8 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %9 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %10 = call %struct.aead_instance* @aead_geniv_alloc(%struct.crypto_template* %8, %struct.rtattr** %9, i32 0, i32 0)
  store %struct.aead_instance* %10, %struct.aead_instance** %6, align 8
  %11 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %12 = call i64 @IS_ERR(%struct.aead_instance* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.aead_instance* %15)
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %21 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 3
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %29 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %17
  br label %76

34:                                               ; preds = %27
  %35 = load i32, i32* @echainiv_encrypt, align 4
  %36 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %37 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @echainiv_decrypt, align 4
  %40 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %41 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @aead_init_geniv, align 4
  %44 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %45 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @aead_exit_geniv, align 4
  %48 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %49 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %52 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %56 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %60 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %66 = getelementptr inbounds %struct.aead_instance, %struct.aead_instance* %65, i32 0, i32 0
  store i32 (%struct.aead_instance*)* @aead_geniv_free, i32 (%struct.aead_instance*)** %66, align 8
  %67 = load %struct.crypto_template*, %struct.crypto_template** %4, align 8
  %68 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %69 = call i32 @aead_register_instance(%struct.crypto_template* %67, %struct.aead_instance* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %34
  br label %76

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %76, %73
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %72, %33
  %77 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %78 = call i32 @aead_geniv_free(%struct.aead_instance* %77)
  br label %74

79:                                               ; preds = %74, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.aead_instance* @aead_geniv_alloc(%struct.crypto_template*, %struct.rtattr**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.aead_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.aead_instance*) #1

declare dso_local i32 @aead_geniv_free(%struct.aead_instance*) #1

declare dso_local i32 @aead_register_instance(%struct.crypto_template*, %struct.aead_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
