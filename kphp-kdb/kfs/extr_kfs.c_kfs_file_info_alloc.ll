; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_file_info_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_kfs_file_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_info = type { i32, i8*, i8*, i32, i64, i64, i32, i8*, i32, i32, i32, i32 }
%struct.stat = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error: unable to stat %s: %m\0A\00", align 1
@kfs_binlog = common dso_local global i32 0, align 4
@kfs_snapshot = common dso_local global i32 0, align 4
@kfs_partial = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfs_file_info* (i8*, i32)* @kfs_file_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfs_file_info* @kfs_file_info_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.kfs_file_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.kfs_file_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i64], align 16
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @stat(i8* %13, %struct.stat* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %18)
  store %struct.kfs_file_info* null, %struct.kfs_file_info** %3, align 8
  br label %203

20:                                               ; preds = %2
  %21 = call %struct.kfs_file_info* @calloc(i32 80, i32 1)
  store %struct.kfs_file_info* %21, %struct.kfs_file_info** %7, align 8
  %22 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %23 = icmp eq %struct.kfs_file_info* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.kfs_file_info* null, %struct.kfs_file_info** %3, align 8
  br label %203

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %29 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %33 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %37 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %41 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %43 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @strdup(i8* %44)
  %46 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %47 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @strlen(i8* %48)
  %50 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %51 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %53 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @strrchr(i8* %54, i8 signext 47)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %25
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  br label %65

61:                                               ; preds = %25
  %62 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %63 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i8* [ %60, %58 ], [ %64, %61 ]
  %67 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %68 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %70 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 46)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %78 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %65
  %80 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %81 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @strlen(i8* %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %142

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %88, 11
  br i1 %89, label %90, label %141

90:                                               ; preds = %87
  %91 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %92 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 11
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 46
  br i1 %100, label %101, label %141

101:                                              ; preds = %90
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i32, i32* %10, align 4
  %104 = icmp sle i32 %103, 10
  br i1 %104, label %105, label %134

105:                                              ; preds = %102
  %106 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %107 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp slt i32 %115, 48
  br i1 %116, label %129, label %117

117:                                              ; preds = %105
  %118 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %119 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sgt i32 %127, 57
  br i1 %128, label %129, label %130

129:                                              ; preds = %117, %105
  br label %134

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %102

134:                                              ; preds = %129, %102
  %135 = load i32, i32* %10, align 4
  %136 = icmp sgt i32 %135, 10
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %138, 11
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %90, %87
  br label %142

142:                                              ; preds = %141, %79
  %143 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %144 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %12, align 1
  %150 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %151 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 0, i8* %155, align 1
  %156 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %157 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %161 = call i32 @classify_suffix(i8* %158, i32 %159, i64* %160)
  %162 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %163 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load i8, i8* %12, align 1
  %165 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %166 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8 %164, i8* %170, align 1
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %174 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  %175 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %178 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %177, i32 0, i32 5
  store i64 %176, i64* %178, align 8
  %179 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %180 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %142
  %184 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %185 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, 3
  switch i32 %187, label %200 [
    i32 0, label %188
    i32 1, label %192
    i32 3, label %196
  ]

188:                                              ; preds = %183
  %189 = load i32, i32* @kfs_binlog, align 4
  %190 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %191 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 8
  br label %200

192:                                              ; preds = %183
  %193 = load i32, i32* @kfs_snapshot, align 4
  %194 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %195 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 8
  br label %200

196:                                              ; preds = %183
  %197 = load i32, i32* @kfs_partial, align 4
  %198 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  %199 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  br label %200

200:                                              ; preds = %183, %196, %192, %188
  br label %201

201:                                              ; preds = %200, %142
  %202 = load %struct.kfs_file_info*, %struct.kfs_file_info** %7, align 8
  store %struct.kfs_file_info* %202, %struct.kfs_file_info** %3, align 8
  br label %203

203:                                              ; preds = %201, %24, %16
  %204 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  ret %struct.kfs_file_info* %204
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.kfs_file_info* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @classify_suffix(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
