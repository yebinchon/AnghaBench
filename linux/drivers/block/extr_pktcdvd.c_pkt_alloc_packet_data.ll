; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_alloc_packet_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_alloc_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_data = type { i32, %struct.bio*, i64*, %struct.bio**, i32, i32 }
%struct.bio = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FRAMES_PER_PAGE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packet_data* (i32)* @pkt_alloc_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packet_data* @pkt_alloc_packet_data(i32 %0) #0 {
  %2 = alloca %struct.packet_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_data*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.packet_data* @kzalloc(i32 40, i32 %8)
  store %struct.packet_data* %9, %struct.packet_data** %5, align 8
  %10 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %11 = icmp ne %struct.packet_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %150

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %16 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @bio_kmalloc(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.bio*
  %21 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %22 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %21, i32 0, i32 1
  store %struct.bio* %20, %struct.bio** %22, align 8
  %23 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %24 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %23, i32 0, i32 1
  %25 = load %struct.bio*, %struct.bio** %24, align 8
  %26 = icmp ne %struct.bio* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %147

28:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FRAMES_PER_PAGE, align 4
  %33 = sdiv i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i32, i32* @__GFP_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @alloc_page(i32 %38)
  %40 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %41 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  %46 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %47 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %35
  br label %113

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %61 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %60, i32 0, i32 5
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %64 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %63, i32 0, i32 4
  %65 = call i32 @bio_list_init(i32* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %85, %59
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @bio_kmalloc(i32 %71, i32 1)
  %73 = bitcast i8* %72 to %struct.bio*
  store %struct.bio* %73, %struct.bio** %6, align 8
  %74 = load %struct.bio*, %struct.bio** %6, align 8
  %75 = icmp ne %struct.bio* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %90

77:                                               ; preds = %70
  %78 = load %struct.bio*, %struct.bio** %6, align 8
  %79 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %80 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %79, i32 0, i32 3
  %81 = load %struct.bio**, %struct.bio*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.bio*, %struct.bio** %81, i64 %83
  store %struct.bio* %78, %struct.bio** %84, align 8
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %66

88:                                               ; preds = %66
  %89 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  store %struct.packet_data* %89, %struct.packet_data** %2, align 8
  br label %151

90:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %97 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %96, i32 0, i32 3
  %98 = load %struct.bio**, %struct.bio*** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bio*, %struct.bio** %98, i64 %100
  %102 = load %struct.bio*, %struct.bio** %101, align 8
  store %struct.bio* %102, %struct.bio** %7, align 8
  %103 = load %struct.bio*, %struct.bio** %7, align 8
  %104 = icmp ne %struct.bio* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.bio*, %struct.bio** %7, align 8
  %107 = call i32 @bio_put(%struct.bio* %106)
  br label %108

108:                                              ; preds = %105, %95
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %91

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112, %54
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %139, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @FRAMES_PER_PAGE, align 4
  %118 = sdiv i32 %116, %117
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %114
  %121 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %122 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %120
  %130 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %131 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @__free_page(i64 %136)
  br label %138

138:                                              ; preds = %129, %120
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %114

142:                                              ; preds = %114
  %143 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %144 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %143, i32 0, i32 1
  %145 = load %struct.bio*, %struct.bio** %144, align 8
  %146 = call i32 @bio_put(%struct.bio* %145)
  br label %147

147:                                              ; preds = %142, %27
  %148 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %149 = call i32 @kfree(%struct.packet_data* %148)
  br label %150

150:                                              ; preds = %147, %12
  store %struct.packet_data* null, %struct.packet_data** %2, align 8
  br label %151

151:                                              ; preds = %150, %88
  %152 = load %struct.packet_data*, %struct.packet_data** %2, align 8
  ret %struct.packet_data* %152
}

declare dso_local %struct.packet_data* @kzalloc(i32, i32) #1

declare dso_local i8* @bio_kmalloc(i32, i32) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.packet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
