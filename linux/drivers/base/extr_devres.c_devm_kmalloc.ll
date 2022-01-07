; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devm_kmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devm_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devres = type { i8*, i32 }

@devm_kmalloc_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"devm_kzalloc_release\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.devres*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @devm_kmalloc_release, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @dev_to_node(%struct.device* %12)
  %14 = call %struct.devres* @alloc_dr(i32 %9, i64 %10, i32 %11, i32 %13)
  store %struct.devres* %14, %struct.devres** %8, align 8
  %15 = load %struct.devres*, %struct.devres** %8, align 8
  %16 = icmp ne %struct.devres* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.devres*, %struct.devres** %8, align 8
  %24 = getelementptr inbounds %struct.devres, %struct.devres* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @set_node_dbginfo(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.devres*, %struct.devres** %8, align 8
  %29 = getelementptr inbounds %struct.devres, %struct.devres* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @devres_add(%struct.device* %27, i8* %30)
  %32 = load %struct.devres*, %struct.devres** %8, align 8
  %33 = getelementptr inbounds %struct.devres, %struct.devres* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %22, %21
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local %struct.devres* @alloc_dr(i32, i64, i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_node_dbginfo(i32*, i8*, i64) #1

declare dso_local i32 @devres_add(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
