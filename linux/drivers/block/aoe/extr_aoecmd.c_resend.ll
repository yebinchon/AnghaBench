; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_resend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, i32 }
%struct.frame = type { i32, i32, i32, %struct.sk_buff*, %struct.aoetgt* }
%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aoetgt = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.sk_buff_head = type { i32 }
%struct.aoe_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"aoe: resend: no interfaces to rotate to.\0A\00", align 1
@FFL_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%15s e%ld.%d oldtag=%08x@%08lx newtag=%08x s=%pm d=%pm nout=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"retransmit\00", align 1
@jiffies = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*, %struct.frame*)* @resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resend(%struct.aoedev* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca %struct.aoe_hdr*, align 8
  %8 = alloca %struct.aoetgt*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %11 = load %struct.frame*, %struct.frame** %4, align 8
  %12 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 4
  %13 = load %struct.aoetgt*, %struct.aoetgt** %12, align 8
  store %struct.aoetgt* %13, %struct.aoetgt** %8, align 8
  %14 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %15 = call i32 @newtag(%struct.aoedev* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.frame*, %struct.frame** %4, align 8
  %17 = getelementptr inbounds %struct.frame, %struct.frame* %16, i32 0, i32 3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %20 = call i32* @ifrotate(%struct.aoetgt* %19)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.frame*, %struct.frame** %4, align 8
  %25 = call i32 @ktcomplete(%struct.frame* %24, i32* null)
  br label %110

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i64 @skb_mac_header(%struct.sk_buff* %27)
  %29 = inttoptr i64 %28 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %29, %struct.aoe_hdr** %7, align 8
  %30 = load %struct.frame*, %struct.frame** %4, align 8
  %31 = getelementptr inbounds %struct.frame, %struct.frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FFL_PROBE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %38 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %39 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %42 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.frame*, %struct.frame** %4, align 8
  %45 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @jiffies, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %53 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %56 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snprintf(i8* %37, i32 128, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %47, i32 %48, i32 %51, i32 %54, i32 %57)
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %60 = call i32 @aoechr_error(i8* %59)
  br label %61

61:                                               ; preds = %36, %26
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.frame*, %struct.frame** %4, align 8
  %64 = getelementptr inbounds %struct.frame, %struct.frame* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.frame*, %struct.frame** %4, align 8
  %66 = call i32 @fhash(%struct.frame* %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @cpu_to_be32(i32 %67)
  %69 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %70 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %75 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memcpy(i32 %73, i32 %76, i32 4)
  %78 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %82 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32 %80, i32 %87, i32 4)
  %89 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %90 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  store %struct.TYPE_3__* %93, %struct.TYPE_3__** %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %96, i32 %97)
  store %struct.sk_buff* %98, %struct.sk_buff** %5, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = icmp eq %struct.sk_buff* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %61
  br label %110

102:                                              ; preds = %61
  %103 = call i32 (...) @ktime_get()
  %104 = load %struct.frame*, %struct.frame** %4, align 8
  %105 = getelementptr inbounds %struct.frame, %struct.frame* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %6, %struct.sk_buff* %107)
  %109 = call i32 @aoenet_xmit(%struct.sk_buff_head* %6)
  br label %110

110:                                              ; preds = %102, %101, %22
  ret void
}

declare dso_local i32 @newtag(%struct.aoedev*) #1

declare dso_local i32* @ifrotate(%struct.aoetgt*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ktcomplete(%struct.frame*, i32*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @aoechr_error(i8*) #1

declare dso_local i32 @fhash(%struct.frame*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

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
