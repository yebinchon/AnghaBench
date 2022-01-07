; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_MONT_CTX_set.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_MONT_CTX_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__, %struct.TYPE_25__, i64 }
%struct.TYPE_25__ = type { i32, i32, i64*, i32 }

@BN_BITS2 = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_MONT_CTX_set(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @BN_init(%struct.TYPE_25__* %8)
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %9, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = call i32 @BN_copy(i32* %14, %struct.TYPE_25__* %15)
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = call i32 @BN_num_bits(%struct.TYPE_25__* %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %22 = call i32 @BN_zero(%struct.TYPE_25__* %21)
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BN_set_bit(%struct.TYPE_25__* %23, i32 %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @BN_mod_inverse(%struct.TYPE_25__* %8, %struct.TYPE_25__* %28, %struct.TYPE_25__* %29, i32* %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %64

34:                                               ; preds = %3
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @BN_lshift(%struct.TYPE_25__* %8, %struct.TYPE_25__* %8, i32 %37)
  %39 = call i32 @BN_sub_word(%struct.TYPE_25__* %8, i32 1)
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @BN_div(%struct.TYPE_25__* %41, i32* null, %struct.TYPE_25__* %8, %struct.TYPE_25__* %42, i32* %43)
  %45 = call i32 @BN_free(%struct.TYPE_25__* %8)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  %48 = call i32 @BN_zero(%struct.TYPE_25__* %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 2
  %55 = call i32 @BN_set_bit(%struct.TYPE_25__* %50, i32 %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @BN_mod(%struct.TYPE_25__* %57, %struct.TYPE_25__* %59, i32* %61, i32* %62)
  store i32 1, i32* %4, align 4
  br label %65

64:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @BN_init(%struct.TYPE_25__*) #1

declare dso_local i32 @BN_copy(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @BN_num_bits(%struct.TYPE_25__*) #1

declare dso_local i32 @BN_zero(%struct.TYPE_25__*) #1

declare dso_local i32 @BN_set_bit(%struct.TYPE_25__*, i32) #1

declare dso_local i32* @BN_mod_inverse(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @BN_lshift(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @BN_sub_word(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @BN_div(%struct.TYPE_25__*, i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @BN_free(%struct.TYPE_25__*) #1

declare dso_local i32 @BN_mod(%struct.TYPE_25__*, %struct.TYPE_25__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
