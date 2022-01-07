; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_disable.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_ad_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32, i32, i32 }

@ADF_ON = common dso_local global i32 0, align 4
@ADF_ANCIENT = common dso_local global i32 0, align 4
@active_ads = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@ADF_DELAYED = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"disabled previously enabled ad #%d: %d users\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.advert*)* @ad_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_disable(%struct.advert* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.advert*, align 8
  store %struct.advert* %0, %struct.advert** %3, align 8
  %4 = load %struct.advert*, %struct.advert** %3, align 8
  %5 = icmp ne %struct.advert* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

7:                                                ; preds = %1
  %8 = load %struct.advert*, %struct.advert** %3, align 8
  %9 = getelementptr inbounds %struct.advert, %struct.advert* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ADF_ON, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %68

15:                                               ; preds = %7
  %16 = load %struct.advert*, %struct.advert** %3, align 8
  %17 = getelementptr inbounds %struct.advert, %struct.advert* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADF_ANCIENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @ADF_ON, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.advert*, %struct.advert** %3, align 8
  %28 = getelementptr inbounds %struct.advert, %struct.advert* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @active_ads, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @active_ads, align 4
  %33 = load i32, i32* @now, align 4
  %34 = load %struct.advert*, %struct.advert** %3, align 8
  %35 = getelementptr inbounds %struct.advert, %struct.advert* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.advert*, %struct.advert** %3, align 8
  %37 = getelementptr inbounds %struct.advert, %struct.advert* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ADF_DELAYED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %15
  %43 = load %struct.advert*, %struct.advert** %3, align 8
  %44 = call i32 @deactivate_ad(%struct.advert* %43)
  br label %52

45:                                               ; preds = %15
  %46 = load i32, i32* @ADF_DELAYED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.advert*, %struct.advert** %3, align 8
  %49 = getelementptr inbounds %struct.advert, %struct.advert* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* @verbosity, align 4
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load %struct.advert*, %struct.advert** %3, align 8
  %58 = getelementptr inbounds %struct.advert, %struct.advert* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.advert*, %struct.advert** %3, align 8
  %61 = getelementptr inbounds %struct.advert, %struct.advert* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.advert*, %struct.advert** %3, align 8
  %66 = call i32 @reinsert_lru_ad_last(%struct.advert* %65)
  %67 = call i32 (...) @process_lru_ads()
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %14, %6
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @deactivate_ad(%struct.advert*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @reinsert_lru_ad_last(%struct.advert*) #1

declare dso_local i32 @process_lru_ads(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
