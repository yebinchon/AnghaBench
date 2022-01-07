; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_top_off_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_top_off_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.freepool = type { i64, i32, i32, i32 }
%struct.FS_BPENTRY = type { i32, i32, i32, i32, %struct.freepool*, %struct.sk_buff* }
%struct.sk_buff = type { %struct.FS_BPENTRY*, i32 }

@FS_DEBUG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Topping off queue at %x (%d-%d/%d)\0A\00", align 1
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Alloc rec-skb: %p(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Alloc rec-d: %p(%zd)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Free rec-skb: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Adding skb %p desc %p -> %p(%p) \00", align 1
@FP_FLAGS_EPI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"link at %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Added %d entries. \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_dev*, %struct.freepool*, i32)* @top_off_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @top_off_fp(%struct.fs_dev* %0, %struct.freepool* %1, i32 %2) #0 {
  %4 = alloca %struct.fs_dev*, align 8
  %5 = alloca %struct.freepool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.FS_BPENTRY*, align 8
  %8 = alloca %struct.FS_BPENTRY*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fs_dev* %0, %struct.fs_dev** %4, align 8
  store %struct.freepool* %1, %struct.freepool** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %13 = load %struct.freepool*, %struct.freepool** %5, align 8
  %14 = getelementptr inbounds %struct.freepool, %struct.freepool* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %17 = load %struct.freepool*, %struct.freepool** %5, align 8
  %18 = getelementptr inbounds %struct.freepool, %struct.freepool* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FP_CNT(i32 %19)
  %21 = call i32 @read_fs(%struct.fs_dev* %16, i32 %20)
  %22 = load %struct.freepool*, %struct.freepool** %5, align 8
  %23 = getelementptr inbounds %struct.freepool, %struct.freepool* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.freepool*, %struct.freepool** %5, align 8
  %26 = getelementptr inbounds %struct.freepool, %struct.freepool* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %24, i64 %27)
  br label %29

29:                                               ; preds = %140, %3
  %30 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %31 = load %struct.freepool*, %struct.freepool** %5, align 8
  %32 = call i64 @nr_buffers_in_freepool(%struct.fs_dev* %30, %struct.freepool* %31)
  %33 = load %struct.freepool*, %struct.freepool** %5, align 8
  %34 = getelementptr inbounds %struct.freepool, %struct.freepool* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %159

37:                                               ; preds = %29
  %38 = load %struct.freepool*, %struct.freepool** %5, align 8
  %39 = getelementptr inbounds %struct.freepool, %struct.freepool* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.sk_buff* @alloc_skb(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load %struct.freepool*, %struct.freepool** %5, align 8
  %46 = getelementptr inbounds %struct.freepool, %struct.freepool* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %44, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  br label %159

52:                                               ; preds = %37
  %53 = load i32, i32* %6, align 4
  %54 = call %struct.FS_BPENTRY* @kmalloc(i32 32, i32 %53)
  store %struct.FS_BPENTRY* %54, %struct.FS_BPENTRY** %8, align 8
  %55 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %56 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %57 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.FS_BPENTRY* %56, i64 32)
  %58 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %59 = icmp ne %struct.FS_BPENTRY* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %64)
  br label %159

66:                                               ; preds = %52
  %67 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %68, %struct.FS_BPENTRY* %69, %struct.FS_BPENTRY* %72, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @FP_FLAGS_EPI, align 4
  %80 = load %struct.freepool*, %struct.freepool** %5, align 8
  %81 = getelementptr inbounds %struct.freepool, %struct.freepool* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %79, %82
  %84 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %85 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = call i32 @virt_to_bus(%struct.FS_BPENTRY* null)
  %87 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %88 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %90, align 8
  %92 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %91)
  %93 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %94 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.freepool*, %struct.freepool** %5, align 8
  %96 = getelementptr inbounds %struct.freepool, %struct.freepool* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %99 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %102 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %101, i32 0, i32 5
  store %struct.sk_buff* %100, %struct.sk_buff** %102, align 8
  %103 = load %struct.freepool*, %struct.freepool** %5, align 8
  %104 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %105 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %104, i32 0, i32 4
  store %struct.freepool* %103, %struct.freepool** %105, align 8
  %106 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %107 = load %struct.freepool*, %struct.freepool** %5, align 8
  %108 = getelementptr inbounds %struct.freepool, %struct.freepool* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @FP_EA(i32 %109)
  %111 = call i32 @read_fs(%struct.fs_dev* %106, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %66
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = call %struct.FS_BPENTRY* @bus_to_virt(i64 %119)
  store %struct.FS_BPENTRY* %120, %struct.FS_BPENTRY** %7, align 8
  %121 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %122 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %121)
  %123 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %7, align 8
  %124 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @FP_FLAGS_EPI, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %7, align 8
  %128 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %140

131:                                              ; preds = %66
  %132 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %133 = load %struct.freepool*, %struct.freepool** %5, align 8
  %134 = getelementptr inbounds %struct.freepool, %struct.freepool* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @FP_SA(i32 %135)
  %137 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %138 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %137)
  %139 = call i32 @write_fs(%struct.fs_dev* %132, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %131, %117
  %141 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %142 = load %struct.freepool*, %struct.freepool** %5, align 8
  %143 = getelementptr inbounds %struct.freepool, %struct.freepool* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @FP_EA(i32 %144)
  %146 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %147 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %146)
  %148 = call i32 @write_fs(%struct.fs_dev* %141, i32 %145, i32 %147)
  %149 = load %struct.freepool*, %struct.freepool** %5, align 8
  %150 = getelementptr inbounds %struct.freepool, %struct.freepool* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %154 = load %struct.freepool*, %struct.freepool** %5, align 8
  %155 = getelementptr inbounds %struct.freepool, %struct.freepool* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @FP_CTU(i32 %156)
  %158 = call i32 @write_fs(%struct.fs_dev* %153, i32 %157, i32 1)
  br label %29

159:                                              ; preds = %60, %51, %29
  %160 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  ret void
}

declare dso_local i32 @fs_dprintk(i32, i8*, ...) #1

declare dso_local i32 @read_fs(%struct.fs_dev*, i32) #1

declare dso_local i32 @FP_CNT(i32) #1

declare dso_local i64 @nr_buffers_in_freepool(%struct.fs_dev*, %struct.freepool*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.FS_BPENTRY* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @virt_to_bus(%struct.FS_BPENTRY*) #1

declare dso_local i32 @FP_EA(i32) #1

declare dso_local %struct.FS_BPENTRY* @bus_to_virt(i64) #1

declare dso_local i32 @write_fs(%struct.fs_dev*, i32, i32) #1

declare dso_local i32 @FP_SA(i32) #1

declare dso_local i32 @FP_CTU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
