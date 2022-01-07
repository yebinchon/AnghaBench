; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_index_check.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_index_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.git_pack_idx_header = type { i64, i32 }
%struct.stat = type { i64, i32 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to stat pack index '%s'\00", align 1
@GIT_ERROR_ODB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid pack index '%s'\00", align 1
@PACK_IDX_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported index version\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"index is non-monotonic\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"index is corrupted\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong index size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.git_pack_file*)* @pack_index_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_index_check(i8* %0, %struct.git_pack_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.git_pack_file*, align 8
  %6 = alloca %struct.git_pack_idx_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.git_pack_file* %1, %struct.git_pack_file** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @git_futils_open_ro(i8* %19)
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %15, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i64, i64* %15, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %189

26:                                               ; preds = %2
  %27 = load i64, i64* %15, align 8
  %28 = call i64 @p_fstat(i64 %27, %struct.stat* %13)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @p_close(i64 %31)
  %33 = load i32, i32* @GIT_ERROR_OS, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @git_error_set(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %3, align 4
  br label %189

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @S_ISREG(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @git__is_sizet(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = icmp ult i64 %48, 1064
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %41, %36
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @p_close(i64 %51)
  %53 = load i32, i32* @GIT_ERROR_ODB, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @git_error_set(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 -1, i32* %3, align 4
  br label %189

56:                                               ; preds = %46
  %57 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %58 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %57, i32 0, i32 2
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @git_futils_mmap_ro(%struct.TYPE_3__* %58, i64 %59, i32 0, i64 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @p_close(i64 %62)
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %3, align 4
  br label %189

68:                                               ; preds = %56
  %69 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %70 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %11, align 8
  %73 = bitcast i8* %72 to %struct.git_pack_idx_header*
  store %struct.git_pack_idx_header* %73, %struct.git_pack_idx_header** %6, align 8
  %74 = load %struct.git_pack_idx_header*, %struct.git_pack_idx_header** %6, align 8
  %75 = getelementptr inbounds %struct.git_pack_idx_header, %struct.git_pack_idx_header* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PACK_IDX_SIGNATURE, align 4
  %78 = call i64 @htonl(i32 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %68
  %81 = load %struct.git_pack_idx_header*, %struct.git_pack_idx_header** %6, align 8
  %82 = getelementptr inbounds %struct.git_pack_idx_header, %struct.git_pack_idx_header* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ntohl(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %87, %80
  %91 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %92 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %91, i32 0, i32 2
  %93 = call i32 @git_futils_mmap_free(%struct.TYPE_3__* %92)
  %94 = call i32 @packfile_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 %94, i32* %3, align 4
  br label %189

95:                                               ; preds = %87
  br label %97

96:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %95
  store i32 0, i32* %8, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %10, align 8
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32* %104, i32** %10, align 8
  br label %105

105:                                              ; preds = %102, %97
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %126, %105
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 256
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ntohl(i32 %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %121 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %120, i32 0, i32 2
  %122 = call i32 @git_futils_mmap_free(%struct.TYPE_3__* %121)
  %123 = call i32 @packfile_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %123, i32* %3, align 4
  br label %189

124:                                              ; preds = %109
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %106

129:                                              ; preds = %106
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i64, i64* %12, align 8
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %134, 24
  %136 = add nsw i32 1024, %135
  %137 = add nsw i32 %136, 20
  %138 = add nsw i32 %137, 20
  %139 = sext i32 %138 to i64
  %140 = icmp ne i64 %133, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %143 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %142, i32 0, i32 2
  %144 = call i32 @git_futils_mmap_free(%struct.TYPE_3__* %143)
  %145 = call i32 @packfile_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %145, i32* %3, align 4
  br label %189

146:                                              ; preds = %132
  br label %182

147:                                              ; preds = %129
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %181

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 %151, 28
  %153 = add nsw i32 1032, %152
  %154 = add nsw i32 %153, 20
  %155 = add nsw i32 %154, 20
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %17, align 8
  %157 = load i64, i64* %17, align 8
  store i64 %157, i64* %18, align 8
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %150
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %161, 1
  %163 = mul nsw i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %18, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %18, align 8
  br label %167

167:                                              ; preds = %160, %150
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %17, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %18, align 8
  %174 = icmp ugt i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171, %167
  %176 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %177 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %176, i32 0, i32 2
  %178 = call i32 @git_futils_mmap_free(%struct.TYPE_3__* %177)
  %179 = call i32 @packfile_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 %179, i32* %3, align 4
  br label %189

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %147
  br label %182

182:                                              ; preds = %181, %146
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %185 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.git_pack_file*, %struct.git_pack_file** %5, align 8
  %188 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %182, %175, %141, %119, %90, %66, %50, %30, %23
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @git_futils_open_ro(i8*) #1

declare dso_local i64 @p_fstat(i64, %struct.stat*) #1

declare dso_local i32 @p_close(i64) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @git__is_sizet(i64) #1

declare dso_local i32 @git_futils_mmap_ro(%struct.TYPE_3__*, i64, i32, i64) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @git_futils_mmap_free(%struct.TYPE_3__*) #1

declare dso_local i32 @packfile_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
