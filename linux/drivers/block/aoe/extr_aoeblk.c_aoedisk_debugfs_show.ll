; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoedisk_debugfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoedisk_debugfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aoedev* }
%struct.aoedev = type { i8, i32, i32, i32, %struct.aoetgt**, i32, i32, i32, i32 }
%struct.aoetgt = type { %struct.aoeif*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.aoeif = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"rttavg: %d rttdev: %d\0A\00", align 1
@RTTSCALE = common dso_local global i8 0, align 1
@RTTDSCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"nskbpool: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"kicked: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"maxbcnt: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ref: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"falloc: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ffree: %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%pm:%d:%d:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\09ssthresh:%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\09taint:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\09r:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\09w:%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @aoedisk_debugfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoedisk_debugfs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aoedev*, align 8
  %6 = alloca %struct.aoetgt**, align 8
  %7 = alloca %struct.aoetgt**, align 8
  %8 = alloca %struct.aoeif*, align 8
  %9 = alloca %struct.aoeif*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.aoedev*, %struct.aoedev** %13, align 8
  store %struct.aoedev* %14, %struct.aoedev** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %17 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @RTTSCALE, align 1
  %21 = sext i8 %20 to i32
  %22 = ashr i32 %19, %21
  %23 = trunc i32 %22 to i8
  %24 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %25 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RTTDSCALE, align 4
  %28 = ashr i32 %26, %27
  %29 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %23, i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %32 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %31, i32 0, i32 8
  %33 = call i32 @skb_queue_len(i32* %32)
  %34 = trunc i32 %33 to i8
  %35 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 signext %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %38 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = trunc i32 %39 to i8
  %41 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8 signext %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %44 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8 signext %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %50 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = trunc i32 %51 to i8
  %53 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8 signext %52)
  %54 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %55 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %54, i32 0, i32 3
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %59 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %58, i32 0, i32 4
  %60 = load %struct.aoetgt**, %struct.aoetgt*** %59, align 8
  store %struct.aoetgt** %60, %struct.aoetgt*** %6, align 8
  %61 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %62 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %63 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %61, i64 %65
  store %struct.aoetgt** %66, %struct.aoetgt*** %7, align 8
  br label %67

67:                                               ; preds = %187, %2
  %68 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %69 = load %struct.aoetgt**, %struct.aoetgt*** %7, align 8
  %70 = icmp ult %struct.aoetgt** %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %73 = load %struct.aoetgt*, %struct.aoetgt** %72, align 8
  %74 = icmp ne %struct.aoetgt* %73, null
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  br i1 %76, label %77, label %190

77:                                               ; preds = %75
  store i8 9, i8* %11, align 1
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %80 = load %struct.aoetgt*, %struct.aoetgt** %79, align 8
  %81 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = trunc i32 %82 to i8
  %84 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8 signext %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %87 = load %struct.aoetgt*, %struct.aoetgt** %86, align 8
  %88 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %87, i32 0, i32 9
  %89 = call i64 @list_empty(%struct.TYPE_4__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %98

92:                                               ; preds = %77
  %93 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %94 = load %struct.aoetgt*, %struct.aoetgt** %93, align 8
  %95 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  br label %98

98:                                               ; preds = %92, %91
  %99 = phi i32* [ null, %91 ], [ %97, %92 ]
  %100 = ptrtoint i32* %99 to i8
  %101 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8 signext %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %104 = load %struct.aoetgt*, %struct.aoetgt** %103, align 8
  %105 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = trunc i32 %106 to i8
  %108 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %109 = load %struct.aoetgt*, %struct.aoetgt** %108, align 8
  %110 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %113 = load %struct.aoetgt*, %struct.aoetgt** %112, align 8
  %114 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %117 = load %struct.aoetgt*, %struct.aoetgt** %116, align 8
  %118 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8 signext %107, i32 %111, i32 %115, i32 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %123 = load %struct.aoetgt*, %struct.aoetgt** %122, align 8
  %124 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = trunc i32 %125 to i8
  %127 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8 signext %126)
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %130 = load %struct.aoetgt*, %struct.aoetgt** %129, align 8
  %131 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = trunc i32 %132 to i8
  %134 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8 signext %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %137 = load %struct.aoetgt*, %struct.aoetgt** %136, align 8
  %138 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = trunc i32 %139 to i8
  %141 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8 signext %140)
  %142 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %143 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %144 = load %struct.aoetgt*, %struct.aoetgt** %143, align 8
  %145 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = trunc i32 %146 to i8
  %148 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8 signext %147)
  %149 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %150 = load %struct.aoetgt*, %struct.aoetgt** %149, align 8
  %151 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %150, i32 0, i32 0
  %152 = load %struct.aoeif*, %struct.aoeif** %151, align 8
  store %struct.aoeif* %152, %struct.aoeif** %8, align 8
  %153 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %154 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %155 = load %struct.aoetgt*, %struct.aoetgt** %154, align 8
  %156 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %155, i32 0, i32 0
  %157 = load %struct.aoeif*, %struct.aoeif** %156, align 8
  %158 = call i32 @ARRAY_SIZE(%struct.aoeif* %157)
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %153, i64 %159
  store %struct.aoeif* %160, %struct.aoeif** %9, align 8
  br label %161

161:                                              ; preds = %181, %98
  %162 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %163 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %162, i32 0, i32 0
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = icmp ne %struct.TYPE_3__* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %168 = load %struct.aoeif*, %struct.aoeif** %9, align 8
  %169 = icmp ult %struct.aoeif* %167, %168
  br label %170

170:                                              ; preds = %166, %161
  %171 = phi i1 [ false, %161 ], [ %169, %166 ]
  br i1 %171, label %172, label %184

172:                                              ; preds = %170
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = load i8, i8* %11, align 1
  %175 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %176 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8 signext %174, i32 %179)
  store i8 44, i8* %11, align 1
  br label %181

181:                                              ; preds = %172
  %182 = load %struct.aoeif*, %struct.aoeif** %8, align 8
  %183 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %182, i32 1
  store %struct.aoeif* %183, %struct.aoeif** %8, align 8
  br label %161

184:                                              ; preds = %170
  %185 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %186 = call i32 @seq_puts(%struct.seq_file* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %187

187:                                              ; preds = %184
  %188 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %189 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %188, i32 1
  store %struct.aoetgt** %189, %struct.aoetgt*** %6, align 8
  br label %67

190:                                              ; preds = %75
  %191 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %192 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %191, i32 0, i32 3
  %193 = load i64, i64* %10, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext, ...) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.aoeif*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
