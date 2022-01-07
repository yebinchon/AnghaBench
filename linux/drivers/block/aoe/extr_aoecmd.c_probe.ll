; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { %struct.aoedev*, i32 }
%struct.aoedev = type { i64, i32, i64 }
%struct.frame = type { i32, %struct.sk_buff*, %struct.TYPE_2__, i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff_head = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s %pm for e%ld.%d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"aoe: cannot probe remote address\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no frame available\00", align 1
@FFL_PROBE = common dso_local global i32 0, align 4
@DEFAULTBCNT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@empty_page = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoetgt*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe(%struct.aoetgt* %0) #0 {
  %2 = alloca %struct.aoetgt*, align 8
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.aoetgt* %0, %struct.aoetgt** %2, align 8
  %10 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %11 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %10, i32 0, i32 0
  %12 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  store %struct.aoedev* %12, %struct.aoedev** %3, align 8
  %13 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %14 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %15 = call %struct.frame* @newtframe(%struct.aoedev* %13, %struct.aoetgt* %14)
  store %struct.frame* %15, %struct.frame** %4, align 8
  %16 = load %struct.frame*, %struct.frame** %4, align 8
  %17 = icmp ne %struct.frame* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %20 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %23 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %26 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 %24, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %126

29:                                               ; preds = %1
  %30 = load i32, i32* @FFL_PROBE, align 4
  %31 = load %struct.frame*, %struct.frame** %4, align 8
  %32 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %36 = call i32 @ifrotate(%struct.aoetgt* %35)
  %37 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %38 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %37, i32 0, i32 0
  %39 = load %struct.aoedev*, %struct.aoedev** %38, align 8
  %40 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %45 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %44, i32 0, i32 0
  %46 = load %struct.aoedev*, %struct.aoedev** %45, align 8
  %47 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  br label %51

49:                                               ; preds = %29
  %50 = load i64, i64* @DEFAULTBCNT, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi i64 [ %48, %43 ], [ %50, %49 ]
  %53 = load %struct.frame*, %struct.frame** %4, align 8
  %54 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.frame*, %struct.frame** %4, align 8
  %57 = call i32 @ata_rw_frameinit(%struct.frame* %56)
  %58 = load %struct.frame*, %struct.frame** %4, align 8
  %59 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %5, align 8
  store i32 0, i32* %9, align 4
  %61 = load %struct.frame*, %struct.frame** %4, align 8
  %62 = getelementptr inbounds %struct.frame, %struct.frame* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %82, %51
  %66 = load i64, i64* %7, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @PAGE_SIZE, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* %8, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @empty_page, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @skb_fill_page_desc(%struct.sk_buff* %77, i32 %78, i32 %79, i32 0, i64 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %7, align 8
  br label %65

88:                                               ; preds = %65
  %89 = load %struct.frame*, %struct.frame** %4, align 8
  %90 = getelementptr inbounds %struct.frame, %struct.frame* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.frame*, %struct.frame** %4, align 8
  %98 = getelementptr inbounds %struct.frame, %struct.frame* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.frame*, %struct.frame** %4, align 8
  %104 = getelementptr inbounds %struct.frame, %struct.frame* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.frame*, %struct.frame** %4, align 8
  %112 = getelementptr inbounds %struct.frame, %struct.frame* %111, i32 0, i32 1
  %113 = load %struct.sk_buff*, %struct.sk_buff** %112, align 8
  %114 = load i32, i32* @GFP_ATOMIC, align 4
  %115 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %113, i32 %114)
  store %struct.sk_buff* %115, %struct.sk_buff** %5, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %88
  %119 = call i32 (...) @ktime_get()
  %120 = load %struct.frame*, %struct.frame** %4, align 8
  %121 = getelementptr inbounds %struct.frame, %struct.frame* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %6, %struct.sk_buff* %123)
  %125 = call i32 @aoenet_xmit(%struct.sk_buff_head* %6)
  br label %126

126:                                              ; preds = %18, %118, %88
  ret void
}

declare dso_local %struct.frame* @newtframe(%struct.aoedev*, %struct.aoetgt*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i64, i32, i8*) #1

declare dso_local i32 @ifrotate(%struct.aoetgt*) #1

declare dso_local i32 @ata_rw_frameinit(%struct.frame*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @aoenet_xmit(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
