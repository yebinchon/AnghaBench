; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_check_offsets_and_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_check_offsets_and_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.drbd_backing_dev = type { %struct.drbd_md, i32 }
%struct.drbd_md = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@MD_4kB_SECT = common dso_local global i32 0, align 4
@MD_128MB_SECT = common dso_local global i64 0, align 8
@MD_32kB_SECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [141 x i8] c"meta data offsets don't make sense: idx=%d al_s=%u, al_sz4k=%u, al_offset=%d, bm_offset=%d, md_size_sect=%u, la_size=%llu, md_capacity=%llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, %struct.drbd_backing_dev*)* @check_offsets_and_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_offsets_and_sizes(%struct.drbd_device* %0, %struct.drbd_backing_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.drbd_backing_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drbd_md*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.drbd_backing_dev* %1, %struct.drbd_backing_dev** %5, align 8
  %10 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %5, align 8
  %11 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @drbd_get_capacity(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %5, align 8
  %15 = getelementptr inbounds %struct.drbd_backing_dev, %struct.drbd_backing_dev* %14, i32 0, i32 0
  store %struct.drbd_md* %15, %struct.drbd_md** %7, align 8
  %16 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %17 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %22 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %25 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %173

29:                                               ; preds = %20
  %30 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %31 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %35 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %38 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  br label %76

41:                                               ; preds = %2
  %42 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %43 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MD_4kB_SECT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %173

48:                                               ; preds = %41
  %49 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %50 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %53 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %56 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MD_4kB_SECT, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %54, %59
  %61 = icmp slt i32 %51, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %173

63:                                               ; preds = %48
  %64 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %65 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MD_4kB_SECT, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %70 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %73 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %63, %29
  %77 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %78 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %76
  %82 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %83 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @MD_128MB_SECT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %114, label %88

88:                                               ; preds = %81
  %89 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %90 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MD_4kB_SECT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %114, label %94

94:                                               ; preds = %88
  %95 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %96 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MD_4kB_SECT, align 4
  %99 = load i32, i32* @MD_32kB_SECT, align 4
  %100 = add nsw i32 %98, %99
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %94
  %103 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %104 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %109 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MD_32kB_SECT, align 4
  %112 = sdiv i32 %111, 8
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %102, %94, %88, %81
  br label %173

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %76
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %119 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %117, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %173

124:                                              ; preds = %116
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %127 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %125, %129
  %131 = load %struct.drbd_backing_dev*, %struct.drbd_backing_dev** %5, align 8
  %132 = call i64 @drbd_md_first_sector(%struct.drbd_backing_dev* %131)
  %133 = icmp slt i64 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %173

135:                                              ; preds = %124
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 7
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @MD_32kB_SECT, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %135
  br label %173

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %147 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MD_4kB_SECT, align 4
  %150 = mul nsw i32 %148, %149
  %151 = icmp ne i32 %145, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %173

153:                                              ; preds = %144
  %154 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %155 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 7
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %173

160:                                              ; preds = %153
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %163 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 7
  %166 = load i32, i32* @MD_4kB_SECT, align 4
  %167 = sdiv i32 %165, %166
  %168 = sdiv i32 %167, 8
  %169 = sdiv i32 %168, 512
  %170 = icmp slt i32 %161, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %173

172:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %202

173:                                              ; preds = %171, %159, %152, %143, %134, %123, %114, %62, %47, %28
  %174 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %175 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %176 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %179 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %182 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %185 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %188 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %191 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %195 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %6, align 8
  %199 = call i32 @drbd_err(%struct.drbd_device* %174, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0), i64 %177, i32 %180, i32 %183, i32 %186, i32 %189, i64 %193, i64 %197, i64 %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %173, %172
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i64 @drbd_get_capacity(i32) #1

declare dso_local i64 @drbd_md_first_sector(%struct.drbd_backing_dev*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i64, i32, i32, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
