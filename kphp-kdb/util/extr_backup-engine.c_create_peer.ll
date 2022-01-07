; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_create_peer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_create_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i8*, i32, i32, i8*, i32, i64, i32 }

@dst_files = common dso_local global %struct.file_info* null, align 8
@dst_fnum = common dso_local global i32 0, align 4
@dstdir = common dso_local global i8* null, align 8
@MAX_DIR_FILES = common dso_local global i32 0, align 4
@MAX_DIRNAME_LEN = common dso_local global i32 0, align 4
@FIF_DEST = common dso_local global i32 0, align 4
@FIF_ZIPPED = common dso_local global i32 0, align 4
@MAX_FPATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot create file %s: %m\0A\00", align 1
@F_WRLCK = common dso_local global i32 0, align 4
@BSIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot write to %s: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_info* (%struct.file_info*)* @create_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_info* @create_peer(%struct.file_info* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %3, align 8
  %9 = load %struct.file_info*, %struct.file_info** @dst_files, align 8
  %10 = load i32, i32* @dst_fnum, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.file_info, %struct.file_info* %9, i64 %11
  store %struct.file_info* %12, %struct.file_info** %4, align 8
  %13 = load i8*, i8** @dstdir, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.file_info*, %struct.file_info** %3, align 8
  %16 = getelementptr inbounds %struct.file_info, %struct.file_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @dst_fnum, align 4
  %20 = load i32, i32* @MAX_DIR_FILES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MAX_DIRNAME_LEN, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %22, %1
  %30 = phi i1 [ false, %22 ], [ false, %1 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.file_info*, %struct.file_info** %4, align 8
  %34 = call i32 @memset(%struct.file_info* %33, i32 0, i32 48)
  %35 = load %struct.file_info*, %struct.file_info** %4, align 8
  %36 = getelementptr inbounds %struct.file_info, %struct.file_info* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 8
  %37 = load i32, i32* @FIF_DEST, align 4
  %38 = load %struct.file_info*, %struct.file_info** %3, align 8
  %39 = getelementptr inbounds %struct.file_info, %struct.file_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FIF_ZIPPED, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %37, %42
  %44 = load %struct.file_info*, %struct.file_info** %4, align 8
  %45 = getelementptr inbounds %struct.file_info, %struct.file_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** @dstdir, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %54, label %57

54:                                               ; preds = %29
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %29
  %58 = load %struct.file_info*, %struct.file_info** %4, align 8
  %59 = getelementptr inbounds %struct.file_info, %struct.file_info* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @dstdir, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load %struct.file_info*, %struct.file_info** %4, align 8
  %65 = getelementptr inbounds %struct.file_info, %struct.file_info* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 47, i8* %69, align 1
  %70 = load %struct.file_info*, %struct.file_info** %4, align 8
  %71 = getelementptr inbounds %struct.file_info, %struct.file_info* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load %struct.file_info*, %struct.file_info** %4, align 8
  %78 = getelementptr inbounds %struct.file_info, %struct.file_info* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.file_info*, %struct.file_info** %4, align 8
  %80 = getelementptr inbounds %struct.file_info, %struct.file_info* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load %struct.file_info*, %struct.file_info** %3, align 8
  %87 = getelementptr inbounds %struct.file_info, %struct.file_info* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @memcpy(i8* %85, i8* %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %91, %92
  %94 = add nsw i32 %93, 13
  %95 = load i32, i32* @MAX_FPATH_LEN, align 4
  %96 = icmp slt i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = call i32 @time(i32 0)
  store i32 %99, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %131, %57
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %134

103:                                              ; preds = %100
  %104 = load %struct.file_info*, %struct.file_info** %4, align 8
  %105 = getelementptr inbounds %struct.file_info, %struct.file_info* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load %struct.file_info*, %struct.file_info** %4, align 8
  %115 = getelementptr inbounds %struct.file_info, %struct.file_info* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @O_CREAT, align 4
  %118 = load i32, i32* @O_EXCL, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @O_RDWR, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @open(i8* %116, i32 %121, i32 416)
  %123 = load %struct.file_info*, %struct.file_info** %4, align 8
  %124 = getelementptr inbounds %struct.file_info, %struct.file_info* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.file_info*, %struct.file_info** %4, align 8
  %126 = getelementptr inbounds %struct.file_info, %struct.file_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %103
  br label %134

130:                                              ; preds = %103
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %100

134:                                              ; preds = %129, %100
  %135 = load %struct.file_info*, %struct.file_info** %4, align 8
  %136 = getelementptr inbounds %struct.file_info, %struct.file_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.file_info*, %struct.file_info** %4, align 8
  %141 = getelementptr inbounds %struct.file_info, %struct.file_info* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  store %struct.file_info* null, %struct.file_info** %2, align 8
  br label %180

144:                                              ; preds = %134
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.file_info*, %struct.file_info** %4, align 8
  %147 = getelementptr inbounds %struct.file_info, %struct.file_info* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.file_info*, %struct.file_info** %4, align 8
  %149 = getelementptr inbounds %struct.file_info, %struct.file_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @F_WRLCK, align 4
  %152 = call i64 @lock_whole_file(i32 %150, i32 %151)
  %153 = icmp sgt i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.file_info*, %struct.file_info** %4, align 8
  %157 = getelementptr inbounds %struct.file_info, %struct.file_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.file_info*, %struct.file_info** %3, align 8
  %160 = getelementptr inbounds %struct.file_info, %struct.file_info* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* @BSIZE, align 8
  %163 = call i64 @write(i32 %158, i32 %161, i64 %162)
  %164 = load i64, i64* @BSIZE, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %144
  %167 = load %struct.file_info*, %struct.file_info** %4, align 8
  %168 = getelementptr inbounds %struct.file_info, %struct.file_info* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @kprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %169)
  %171 = load %struct.file_info*, %struct.file_info** %4, align 8
  %172 = call i32 @invalidate_file(%struct.file_info* %171)
  store %struct.file_info* null, %struct.file_info** %2, align 8
  br label %180

173:                                              ; preds = %144
  %174 = load i64, i64* @BSIZE, align 8
  %175 = load %struct.file_info*, %struct.file_info** %4, align 8
  %176 = getelementptr inbounds %struct.file_info, %struct.file_info* %175, i32 0, i32 5
  store i64 %174, i64* %176, align 8
  %177 = load i32, i32* @dst_fnum, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @dst_fnum, align 4
  %179 = load %struct.file_info*, %struct.file_info** %4, align 8
  store %struct.file_info* %179, %struct.file_info** %2, align 8
  br label %180

180:                                              ; preds = %173, %166, %139
  %181 = load %struct.file_info*, %struct.file_info** %2, align 8
  ret %struct.file_info* %181
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.file_info*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i64 @lock_whole_file(i32, i32) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @invalidate_file(%struct.file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
