; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_flow_offload.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_flow_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32* }
%struct.flow_offload = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.flow_offload_tuple }
%struct.flow_offload_tuple = type { i64, i32 }
%struct.flow_offload_hw_path = type { i32, i32 }
%struct.mtk_foe_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@FLOW_OFFLOAD_DIR_ORIGINAL = common dso_local global i64 0, align 8
@FLOW_OFFLOAD_DIR_REPLY = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FLOW_OFFLOAD_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_flow_offload(%struct.mtk_eth* %0, i32 %1, %struct.flow_offload* %2, %struct.flow_offload_hw_path* %3, %struct.flow_offload_hw_path* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_eth*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flow_offload*, align 8
  %10 = alloca %struct.flow_offload_hw_path*, align 8
  %11 = alloca %struct.flow_offload_hw_path*, align 8
  %12 = alloca %struct.flow_offload_tuple*, align 8
  %13 = alloca %struct.flow_offload_tuple*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mtk_foe_entry, align 4
  %18 = alloca %struct.mtk_foe_entry, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.flow_offload* %2, %struct.flow_offload** %9, align 8
  store %struct.flow_offload_hw_path* %3, %struct.flow_offload_hw_path** %10, align 8
  store %struct.flow_offload_hw_path* %4, %struct.flow_offload_hw_path** %11, align 8
  %19 = load %struct.flow_offload*, %struct.flow_offload** %9, align 8
  %20 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @FLOW_OFFLOAD_DIR_ORIGINAL, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.flow_offload_tuple* %24, %struct.flow_offload_tuple** %12, align 8
  %25 = load %struct.flow_offload*, %struct.flow_offload** %9, align 8
  %26 = getelementptr inbounds %struct.flow_offload, %struct.flow_offload* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* @FLOW_OFFLOAD_DIR_REPLY, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.flow_offload_tuple* %30, %struct.flow_offload_tuple** %13, align 8
  %31 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %32 = call i32 @mtk_r32(%struct.mtk_eth* %31, i32 16)
  %33 = and i32 %32, 32767
  store i32 %33, i32* %14, align 4
  %34 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %17, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %18, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %12, align 8
  %43 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPPROTO_TCP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %5
  %48 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %12, align 8
  %49 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IPPROTO_UDP, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %167

56:                                               ; preds = %47, %5
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @FLOW_OFFLOAD_DEL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  store %struct.flow_offload* null, %struct.flow_offload** %9, align 8
  %61 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %6, align 4
  br label %167

62:                                               ; preds = %56
  %63 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %12, align 8
  %64 = getelementptr inbounds %struct.flow_offload_tuple, %struct.flow_offload_tuple* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %91 [
    i32 129, label %66
    i32 128, label %88
  ]

66:                                               ; preds = %62
  %67 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %12, align 8
  %68 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %13, align 8
  %69 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %10, align 8
  %70 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %11, align 8
  %71 = call i32 @mtk_foe_prepare_v4(%struct.mtk_foe_entry* %17, %struct.flow_offload_tuple* %67, %struct.flow_offload_tuple* %68, %struct.flow_offload_hw_path* %69, %struct.flow_offload_hw_path* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %13, align 8
  %75 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %12, align 8
  %76 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %11, align 8
  %77 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %10, align 8
  %78 = call i32 @mtk_foe_prepare_v4(%struct.mtk_foe_entry* %18, %struct.flow_offload_tuple* %74, %struct.flow_offload_tuple* %75, %struct.flow_offload_hw_path* %76, %struct.flow_offload_hw_path* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %66
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %167

83:                                               ; preds = %73
  %84 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %12, align 8
  %85 = call i32 @mtk_flow_hash_v4(%struct.flow_offload_tuple* %84)
  store i32 %85, i32* %15, align 4
  %86 = load %struct.flow_offload_tuple*, %struct.flow_offload_tuple** %13, align 8
  %87 = call i32 @mtk_flow_hash_v4(%struct.flow_offload_tuple* %86)
  store i32 %87, i32* %16, align 4
  br label %94

88:                                               ; preds = %62
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %167

91:                                               ; preds = %62
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %167

94:                                               ; preds = %83
  %95 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @mtk_check_entry_available(%struct.mtk_eth* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @mtk_check_entry_available(%struct.mtk_eth* %100, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %167

108:                                              ; preds = %99
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %108, %94
  %112 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @mtk_check_entry_available(%struct.mtk_eth* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %111
  %117 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @mtk_check_entry_available(%struct.mtk_eth* %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %167

125:                                              ; preds = %116
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %125, %111
  %129 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %11, align 8
  %130 = getelementptr inbounds %struct.flow_offload_hw_path, %struct.flow_offload_hw_path* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %11, align 8
  %133 = getelementptr inbounds %struct.flow_offload_hw_path, %struct.flow_offload_hw_path* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @mtk_foe_set_mac(%struct.mtk_foe_entry* %17, i32 %131, i32 %134)
  %136 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %10, align 8
  %137 = getelementptr inbounds %struct.flow_offload_hw_path, %struct.flow_offload_hw_path* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path** %10, align 8
  %140 = getelementptr inbounds %struct.flow_offload_hw_path, %struct.flow_offload_hw_path* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mtk_foe_set_mac(%struct.mtk_foe_entry* %18, i32 %138, i32 %141)
  %143 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @mtk_foe_write(%struct.mtk_eth* %143, i32 %144, %struct.mtk_foe_entry* %17)
  %146 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @mtk_foe_write(%struct.mtk_eth* %146, i32 %147, %struct.mtk_foe_entry* %18)
  %149 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %150 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.flow_offload*, %struct.flow_offload** %9, align 8
  %157 = call i32 @rcu_assign_pointer(i32 %155, %struct.flow_offload* %156)
  %158 = load %struct.mtk_eth*, %struct.mtk_eth** %7, align 8
  %159 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.flow_offload*, %struct.flow_offload** %9, align 8
  %166 = call i32 @rcu_assign_pointer(i32 %164, %struct.flow_offload* %165)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %128, %122, %105, %91, %88, %80, %60, %53
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mtk_foe_prepare_v4(%struct.mtk_foe_entry*, %struct.flow_offload_tuple*, %struct.flow_offload_tuple*, %struct.flow_offload_hw_path*, %struct.flow_offload_hw_path*) #1

declare dso_local i32 @mtk_flow_hash_v4(%struct.flow_offload_tuple*) #1

declare dso_local i32 @mtk_check_entry_available(%struct.mtk_eth*, i32) #1

declare dso_local i32 @mtk_foe_set_mac(%struct.mtk_foe_entry*, i32, i32) #1

declare dso_local i32 @mtk_foe_write(%struct.mtk_eth*, i32, %struct.mtk_foe_entry*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.flow_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
