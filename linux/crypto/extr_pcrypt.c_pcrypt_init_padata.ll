; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_init_padata.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_init_padata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padata_instance**, i8*)* @pcrypt_init_padata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcrypt_init_padata(%struct.padata_instance** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padata_instance**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.padata_instance** %0, %struct.padata_instance*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.padata_instance* @padata_alloc_possible(i8* %9)
  %11 = load %struct.padata_instance**, %struct.padata_instance*** %4, align 8
  store %struct.padata_instance* %10, %struct.padata_instance** %11, align 8
  %12 = load %struct.padata_instance**, %struct.padata_instance*** %4, align 8
  %13 = load %struct.padata_instance*, %struct.padata_instance** %12, align 8
  %14 = icmp ne %struct.padata_instance* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.padata_instance**, %struct.padata_instance*** %4, align 8
  %19 = load %struct.padata_instance*, %struct.padata_instance** %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @pcrypt_sysfs_add(%struct.padata_instance* %19, i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.padata_instance**, %struct.padata_instance*** %4, align 8
  %26 = load %struct.padata_instance*, %struct.padata_instance** %25, align 8
  %27 = call i32 @padata_free(%struct.padata_instance* %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.padata_instance* @padata_alloc_possible(i8*) #1

declare dso_local i32 @pcrypt_sysfs_add(%struct.padata_instance*, i8*) #1

declare dso_local i32 @padata_free(%struct.padata_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
