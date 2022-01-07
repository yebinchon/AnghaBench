; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_loose_fill_ref_dir.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_loose_fill_ref_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.ref_store = type { i32 }
%struct.ref_dir = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.dirent = type { i8* }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fill_ref_dir\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISBROKEN = common dso_local global i32 0, align 4
@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"loose refname is dangerous: %s\00", align 1
@REF_BAD_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_store*, %struct.ref_dir*, i8*)* @loose_fill_ref_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loose_fill_ref_dir(%struct.ref_store* %0, %struct.ref_dir* %1, i8* %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_dir*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca %struct.stat, align 4
  %16 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store %struct.ref_dir* %1, %struct.ref_dir** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %18 = load i32, i32* @REF_STORE_READ, align 4
  %19 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %17, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %19, %struct.files_ref_store** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %23 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @files_ref_path(%struct.files_ref_store* %23, %struct.strbuf* %12, i8* %24)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @opendir(i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %158

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 257
  %38 = call i32 @strbuf_init(%struct.strbuf* %11, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @strbuf_add(%struct.strbuf* %11, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %144, %61, %54, %35
  %43 = load i32*, i32** %8, align 8
  %44 = call %struct.dirent* @readdir(i32* %43)
  store %struct.dirent* %44, %struct.dirent** %9, align 8
  %45 = icmp ne %struct.dirent* %44, null
  br i1 %45, label %46, label %150

46:                                               ; preds = %42
  %47 = load %struct.dirent*, %struct.dirent** %9, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %42

55:                                               ; preds = %46
  %56 = load %struct.dirent*, %struct.dirent** %9, align 8
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @ends_with(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %42

62:                                               ; preds = %55
  %63 = load %struct.dirent*, %struct.dirent** %9, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %65)
  %67 = load %struct.dirent*, %struct.dirent** %9, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %69)
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @stat(i32 %72, %struct.stat* %15)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %144

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @S_ISDIR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = call i32 @strbuf_addch(%struct.strbuf* %11, i8 signext 47)
  %83 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %84 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %85 = getelementptr inbounds %struct.ref_dir, %struct.ref_dir* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @create_dir_entry(i32 %86, i32 %88, i64 %90, i32 1)
  %92 = call i32 @add_entry_to_dir(%struct.ref_dir* %83, i32 %91)
  br label %143

93:                                               ; preds = %76
  %94 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %95 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @RESOLVE_REF_READING, align 4
  %99 = call i32 @refs_resolve_ref_unsafe(i32* %95, i32 %97, i32 %98, %struct.object_id* %14, i32* %16)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = call i32 @oidclr(%struct.object_id* %14)
  %103 = load i32, i32* @REF_ISBROKEN, align 4
  %104 = load i32, i32* %16, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %114

106:                                              ; preds = %93
  %107 = call i64 @is_null_oid(%struct.object_id* %14)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @REF_ISBROKEN, align 4
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113, %101
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %118 = call i64 @check_refname_format(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @refname_is_safe(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = call i32 @oidclr(%struct.object_id* %14)
  %131 = load i32, i32* @REF_BAD_NAME, align 4
  %132 = load i32, i32* @REF_ISBROKEN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %16, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %129, %114
  %137 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %138 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @create_ref_entry(i32 %139, %struct.object_id* %14, i32 %140)
  %142 = call i32 @add_entry_to_dir(%struct.ref_dir* %137, i32 %141)
  br label %143

143:                                              ; preds = %136, %81
  br label %144

144:                                              ; preds = %143, %75
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = call i32 @strbuf_setlen(%struct.strbuf* %11, i64 %146)
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @strbuf_setlen(%struct.strbuf* %12, i64 %148)
  br label %42

150:                                              ; preds = %42
  %151 = call i32 @strbuf_release(%struct.strbuf* %11)
  %152 = call i32 @strbuf_release(%struct.strbuf* %12)
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @closedir(i32* %153)
  %155 = load %struct.ref_dir*, %struct.ref_dir** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @add_per_worktree_entries_to_dir(%struct.ref_dir* %155, i8* %156)
  br label %158

158:                                              ; preds = %150, %33
  ret void
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @files_ref_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @ends_with(i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @add_entry_to_dir(%struct.ref_dir*, i32) #1

declare dso_local i32 @create_dir_entry(i32, i32, i64, i32) #1

declare dso_local i32 @refs_resolve_ref_unsafe(i32*, i32, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i64 @check_refname_format(i32, i32) #1

declare dso_local i32 @refname_is_safe(i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @create_ref_entry(i32, %struct.object_id*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @add_per_worktree_entries_to_dir(%struct.ref_dir*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
