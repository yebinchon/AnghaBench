; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_ata_rw_frameinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_ata_rw_frameinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { %struct.TYPE_7__, %struct.TYPE_5__*, i64, i64, i32, %struct.aoetgt*, %struct.sk_buff* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.aoetgt = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.aoe_hdr = type { i32 }
%struct.aoe_atahdr = type { i32, i32, i8, i32 }

@DEVFL_EXT = common dso_local global i32 0, align 4
@AOEAFL_EXT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@AOEAFL_WRITE = common dso_local global i32 0, align 4
@ATA_CMD_PIO_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*)* @ata_rw_frameinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_rw_frameinit(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.aoetgt*, align 8
  %4 = alloca %struct.aoe_hdr*, align 8
  %5 = alloca %struct.aoe_atahdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.frame* %0, %struct.frame** %2, align 8
  %9 = load %struct.frame*, %struct.frame** %2, align 8
  %10 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 6
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @skb_mac_header(%struct.sk_buff* %12)
  %14 = inttoptr i64 %13 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %14, %struct.aoe_hdr** %4, align 8
  %15 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %15, i64 1
  %17 = bitcast %struct.aoe_hdr* %16 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %17, %struct.aoe_atahdr** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @skb_put(%struct.sk_buff* %18, i32 20)
  %20 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(%struct.aoe_hdr* %20, i32 0, i32 %23)
  store i8 16, i8* %7, align 1
  store i8 4, i8* %8, align 1
  %25 = load %struct.frame*, %struct.frame** %2, align 8
  %26 = getelementptr inbounds %struct.frame, %struct.frame* %25, i32 0, i32 5
  %27 = load %struct.aoetgt*, %struct.aoetgt** %26, align 8
  store %struct.aoetgt* %27, %struct.aoetgt** %3, align 8
  %28 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %29 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %32 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %33 = call i32 @aoehdr_atainit(%struct.TYPE_8__* %30, %struct.aoetgt* %31, %struct.aoe_hdr* %32)
  %34 = load %struct.frame*, %struct.frame** %2, align 8
  %35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.frame*, %struct.frame** %2, align 8
  %37 = call i32 @fhash(%struct.frame* %36)
  %38 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %39 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.frame*, %struct.frame** %2, align 8
  %43 = getelementptr inbounds %struct.frame, %struct.frame* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.frame*, %struct.frame** %2, align 8
  %45 = getelementptr inbounds %struct.frame, %struct.frame* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.frame*, %struct.frame** %2, align 8
  %47 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 9
  %51 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %52 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %54 = load %struct.frame*, %struct.frame** %2, align 8
  %55 = getelementptr inbounds %struct.frame, %struct.frame* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @put_lba(%struct.aoe_atahdr* %53, i32 %57)
  %59 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %60 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DEVFL_EXT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %1
  %68 = load i32, i32* @AOEAFL_EXT, align 4
  %69 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %70 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %82

73:                                               ; preds = %1
  store i8 0, i8* %8, align 1
  %74 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %75 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  store i32 %77, i32* %75, align 4
  %78 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %79 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 224
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %73, %67
  %83 = load %struct.frame*, %struct.frame** %2, align 8
  %84 = getelementptr inbounds %struct.frame, %struct.frame* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %139

87:                                               ; preds = %82
  %88 = load %struct.frame*, %struct.frame** %2, align 8
  %89 = getelementptr inbounds %struct.frame, %struct.frame* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @bio_data_dir(i32 %92)
  %94 = load i64, i64* @WRITE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %87
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load %struct.frame*, %struct.frame** %2, align 8
  %99 = getelementptr inbounds %struct.frame, %struct.frame* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.frame*, %struct.frame** %2, align 8
  %104 = getelementptr inbounds %struct.frame, %struct.frame* %103, i32 0, i32 0
  %105 = bitcast %struct.TYPE_7__* %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @skb_fillup(%struct.sk_buff* %97, i32 %102, i64 %106)
  %108 = load i32, i32* @AOEAFL_WRITE, align 4
  %109 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %110 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.frame*, %struct.frame** %2, align 8
  %114 = getelementptr inbounds %struct.frame, %struct.frame* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.frame*, %struct.frame** %2, align 8
  %122 = getelementptr inbounds %struct.frame, %struct.frame* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.frame*, %struct.frame** %2, align 8
  %128 = getelementptr inbounds %struct.frame, %struct.frame* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %136 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %144

139:                                              ; preds = %87, %82
  %140 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %141 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  store i8 0, i8* %7, align 1
  br label %144

144:                                              ; preds = %139, %96
  %145 = load i8, i8* @ATA_CMD_PIO_READ, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* %7, align 1
  %148 = sext i8 %147 to i32
  %149 = or i32 %146, %148
  %150 = load i8, i8* %8, align 1
  %151 = sext i8 %150 to i32
  %152 = or i32 %149, %151
  %153 = trunc i32 %152 to i8
  %154 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %155 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %154, i32 0, i32 2
  store i8 %153, i8* %155, align 4
  %156 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %157 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.aoe_hdr*, i32, i32) #1

declare dso_local i32 @aoehdr_atainit(%struct.TYPE_8__*, %struct.aoetgt*, %struct.aoe_hdr*) #1

declare dso_local i32 @fhash(%struct.frame*) #1

declare dso_local i32 @put_lba(%struct.aoe_atahdr*, i32) #1

declare dso_local i64 @bio_data_dir(i32) #1

declare dso_local i32 @skb_fillup(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
