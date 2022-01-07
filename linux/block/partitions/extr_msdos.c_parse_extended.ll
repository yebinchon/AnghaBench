; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_parse_extended.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_parse_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.partition = type { i32 }

@LINUX_RAID_PARTITION = common dso_local global i64 0, align 8
@ADDPART_FLAG_RAID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parsed_partitions*, i64, i64, i32)* @parse_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_extended(%struct.parsed_partitions* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parsed_partitions*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.partition*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %21 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bdev_logical_block_size(i32 %22)
  %24 = sdiv i32 %23, 512
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %4, %176
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  %31 = icmp sgt i32 %30, 100
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %192

33:                                               ; preds = %28
  %34 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %35 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %38 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %192

42:                                               ; preds = %33
  %43 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i8* @read_part_sector(%struct.parsed_partitions* %43, i64 %44, i32* %10)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %192

49:                                               ; preds = %42
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 510
  %52 = call i32 @msdos_magic_present(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %189

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 446
  %58 = bitcast i8* %57 to %struct.partition*
  store %struct.partition* %58, %struct.partition** %9, align 8
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %146, %55
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %151

62:                                               ; preds = %59
  %63 = load %struct.partition*, %struct.partition** %9, align 8
  %64 = call i64 @nr_sects(%struct.partition* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.partition*, %struct.partition** %9, align 8
  %68 = call i64 @is_extended_partition(%struct.partition* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  br label %146

71:                                               ; preds = %66
  %72 = load %struct.partition*, %struct.partition** %9, align 8
  %73 = call i64 @start_sect(%struct.partition* %72)
  %74 = load i64, i64* %14, align 8
  %75 = mul nsw i64 %73, %74
  store i64 %75, i64* %17, align 8
  %76 = load %struct.partition*, %struct.partition** %9, align 8
  %77 = call i64 @nr_sects(%struct.partition* %76)
  %78 = load i64, i64* %14, align 8
  %79 = mul nsw i64 %77, %78
  store i64 %79, i64* %18, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %80, %81
  store i64 %82, i64* %19, align 8
  %83 = load i32, i32* %16, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %107

85:                                               ; preds = %71
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %13, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %146

92:                                               ; preds = %85
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %146

97:                                               ; preds = %92
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %18, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = add nsw i64 %101, %102
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %146

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %71
  %108 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %109 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %110 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @put_partition(%struct.parsed_partitions* %108, i64 %111, i64 %112, i64 %113)
  %115 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %116 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %117 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @set_info(%struct.parsed_partitions* %115, i64 %118, i32 %119)
  %121 = load %struct.partition*, %struct.partition** %9, align 8
  %122 = call i64 @SYS_IND(%struct.partition* %121)
  %123 = load i64, i64* @LINUX_RAID_PARTITION, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %107
  %126 = load i32, i32* @ADDPART_FLAG_RAID, align 4
  %127 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %128 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %131 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %126, i32* %134, align 4
  br label %135

135:                                              ; preds = %125, %107
  store i32 0, i32* %15, align 4
  %136 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %137 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.parsed_partitions*, %struct.parsed_partitions** %5, align 8
  %141 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %189

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %105, %96, %91, %70
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  %149 = load %struct.partition*, %struct.partition** %9, align 8
  %150 = getelementptr inbounds %struct.partition, %struct.partition* %149, i32 1
  store %struct.partition* %150, %struct.partition** %9, align 8
  br label %59

151:                                              ; preds = %59
  %152 = load %struct.partition*, %struct.partition** %9, align 8
  %153 = getelementptr inbounds %struct.partition, %struct.partition* %152, i64 -4
  store %struct.partition* %153, %struct.partition** %9, align 8
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %167, %151
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %155, 4
  br i1 %156, label %157, label %172

157:                                              ; preds = %154
  %158 = load %struct.partition*, %struct.partition** %9, align 8
  %159 = call i64 @nr_sects(%struct.partition* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load %struct.partition*, %struct.partition** %9, align 8
  %163 = call i64 @is_extended_partition(%struct.partition* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %172

166:                                              ; preds = %161, %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %16, align 4
  %170 = load %struct.partition*, %struct.partition** %9, align 8
  %171 = getelementptr inbounds %struct.partition, %struct.partition* %170, i32 1
  store %struct.partition* %171, %struct.partition** %9, align 8
  br label %154

172:                                              ; preds = %165, %154
  %173 = load i32, i32* %16, align 4
  %174 = icmp eq i32 %173, 4
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %189

176:                                              ; preds = %172
  %177 = load i64, i64* %6, align 8
  %178 = load %struct.partition*, %struct.partition** %9, align 8
  %179 = call i64 @start_sect(%struct.partition* %178)
  %180 = load i64, i64* %14, align 8
  %181 = mul nsw i64 %179, %180
  %182 = add nsw i64 %177, %181
  store i64 %182, i64* %12, align 8
  %183 = load %struct.partition*, %struct.partition** %9, align 8
  %184 = call i64 @nr_sects(%struct.partition* %183)
  %185 = load i64, i64* %14, align 8
  %186 = mul nsw i64 %184, %185
  store i64 %186, i64* %13, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @put_dev_sector(i32 %187)
  br label %28

189:                                              ; preds = %175, %144, %54
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @put_dev_sector(i32 %190)
  br label %192

192:                                              ; preds = %189, %48, %41, %32
  ret void
}

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i8* @read_part_sector(%struct.parsed_partitions*, i64, i32*) #1

declare dso_local i32 @msdos_magic_present(i8*) #1

declare dso_local i64 @nr_sects(%struct.partition*) #1

declare dso_local i64 @is_extended_partition(%struct.partition*) #1

declare dso_local i64 @start_sect(%struct.partition*) #1

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i64, i64, i64) #1

declare dso_local i32 @set_info(%struct.parsed_partitions*, i64, i32) #1

declare dso_local i64 @SYS_IND(%struct.partition*) #1

declare dso_local i32 @put_dev_sector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
