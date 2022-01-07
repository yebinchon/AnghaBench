; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_debugfs.c_mtk_ppe_debugfs_foe_show.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_debugfs.c_mtk_ppe_debugfs_foe_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.mtk_foe_entry* }
%struct.mtk_foe_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@_eth = common dso_local global %struct.mtk_eth* null, align 8
@MTK_PPE_ENTRY_CNT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [126 x i8] c"(%x)0x%05x|state=%s|type=%s|%pI4:%d->%pI4:%d=>%pI4:%d->%pI4:%d|%pM=>%pM|etype=0x%04x|info1=0x%x|info2=0x%x|vlan1=%d|vlan2=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0x%05x state=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtk_ppe_debugfs_foe_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ppe_debugfs_foe_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_eth*, align 8
  %6 = alloca %struct.mtk_foe_entry*, align 8
  %7 = alloca %struct.mtk_foe_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.mtk_eth*, %struct.mtk_eth** @_eth, align 8
  store %struct.mtk_eth* %16, %struct.mtk_eth** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %17, i32 0, i32 0
  %19 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %18, align 8
  store %struct.mtk_foe_entry* %19, %struct.mtk_foe_entry** %6, align 8
  %20 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %20, i32 0, i32 0
  %22 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %21, align 8
  %23 = load i32, i32* @MTK_PPE_ENTRY_CNT, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %22, i64 %24
  store %struct.mtk_foe_entry* %25, %struct.mtk_foe_entry** %7, align 8
  br label %26

26:                                               ; preds = %144, %2
  %27 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %28 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %7, align 8
  %29 = icmp ult %struct.mtk_foe_entry* %27, %28
  br i1 %29, label %30, label %149

30:                                               ; preds = %26
  %31 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %32 = call i64 @IS_IPV4_HNAPT(%struct.mtk_foe_entry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %136

34:                                               ; preds = %30
  %35 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %36 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htonl(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htonl(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %46 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @htonl(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %51 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @htonl(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %13, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %14, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %15, align 8
  %62 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @swab32(i32 %65)
  %67 = bitcast i8* %61 to i32*
  store i32 %66, i32* %67, align 16
  %68 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %69 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @swab16(i32 %71)
  %73 = getelementptr inbounds i8, i8* %61, i64 4
  %74 = bitcast i8* %73 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %76 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @swab32(i32 %78)
  %80 = bitcast i8* %58 to i32*
  store i32 %79, i32* %80, align 16
  %81 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %82 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @swab16(i32 %84)
  %86 = getelementptr inbounds i8, i8* %58, i64 4
  %87 = bitcast i8* %86 to i32*
  store i32 %85, i32* %87, align 4
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %91 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %7, align 8
  %92 = call i32 @ei(%struct.mtk_foe_entry* %90, %struct.mtk_foe_entry* %91)
  %93 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %94 = call i32 @es(%struct.mtk_foe_entry* %93)
  %95 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %96 = call i32 @pt(%struct.mtk_foe_entry* %95)
  %97 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %98 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %102 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %106 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %110 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %114 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ntohs(i32 %116)
  %118 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %119 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %123 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %127 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %131 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32 %94, i32 %96, i32* %9, i32 %100, i32* %10, i32 %104, i32* %11, i32 %108, i32* %12, i32 %112, i8* %61, i8* %58, i32 %117, i32 %121, i32 %125, i32 %129, i32 %133)
  %135 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %144

136:                                              ; preds = %30
  %137 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %138 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %139 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %7, align 8
  %140 = call i32 @ei(%struct.mtk_foe_entry* %138, %struct.mtk_foe_entry* %139)
  %141 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %142 = call i32 @es(%struct.mtk_foe_entry* %141)
  %143 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %136, %34
  %145 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %6, align 8
  %146 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %145, i32 1
  store %struct.mtk_foe_entry* %146, %struct.mtk_foe_entry** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %26

149:                                              ; preds = %26
  ret i32 0
}

declare dso_local i64 @IS_IPV4_HNAPT(%struct.mtk_foe_entry*) #1

declare dso_local i32 @htonl(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

declare dso_local i32 @ei(%struct.mtk_foe_entry*, %struct.mtk_foe_entry*) #1

declare dso_local i32 @es(%struct.mtk_foe_entry*) #1

declare dso_local i32 @pt(%struct.mtk_foe_entry*) #1

declare dso_local i32 @ntohs(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
