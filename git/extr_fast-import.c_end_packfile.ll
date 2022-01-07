; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_end_packfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_end_packfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.packed_git = type { i8* }
%struct.branch = type { i64, i32, %struct.branch* }
%struct.tag = type { i64, i32, %struct.tag* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.object_id = type { i32 }

@end_packfile.running = internal global i32 0, align 4
@pack_data = common dso_local global %struct.TYPE_6__* null, align 8
@object_count = common dso_local global i64 0, align 8
@pack_file = common dso_local global i32 0, align 4
@pack_size = common dso_local global i32 0, align 4
@unpack_limit = common dso_local global i64 0, align 8
@pack_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"core git rejected index %s\00", align 1
@all_packs = common dso_local global %struct.packed_git** null, align 8
@the_repository = common dso_local global i32 0, align 4
@pack_edges = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@branch_table_sz = common dso_local global i32 0, align 4
@branch_table = common dso_local global %struct.branch** null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@first_tag = common dso_local global %struct.tag* null, align 8
@last_blob = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @end_packfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_packfile() #0 {
  %1 = alloca %struct.packed_git*, align 8
  %2 = alloca %struct.object_id, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.branch*, align 8
  %6 = alloca %struct.tag*, align 8
  %7 = load i32, i32* @end_packfile.running, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %0
  br label %161

13:                                               ; preds = %9
  store i32 1, i32* @end_packfile.running, align 4
  %14 = call i32 (...) @clear_delta_base_cache()
  %15 = load i64, i64* @object_count, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %147

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %19 = call i32 @close_pack_windows(%struct.TYPE_6__* %18)
  %20 = load i32, i32* @pack_file, align 4
  %21 = getelementptr inbounds %struct.object_id, %struct.object_id* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @finalize_hashfile(i32 %20, i32 %22, i32 0)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @object_count, align 8
  %34 = getelementptr inbounds %struct.object_id, %struct.object_id* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @pack_size, align 4
  %37 = call i32 @fixup_pack_header_footer(i32 %26, i32 %29, i32 %32, i64 %33, i32 %35, i32 %36)
  %38 = load i64, i64* @object_count, align 8
  %39 = load i64, i64* @unpack_limit, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %17
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %43 = call i32 @loosen_small_pack(%struct.TYPE_6__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* @pack_id, align 8
  %47 = call i32 @invalidate_pack_id(i64 %46)
  br label %148

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = call i32 (...) @create_index()
  %55 = call i8* @keep_pack(i32 %54)
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call %struct.packed_git* @add_packed_git(i8* %56, i32 %58, i32 1)
  store %struct.packed_git* %59, %struct.packed_git** %1, align 8
  %60 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %61 = icmp ne %struct.packed_git* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %49
  %66 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %67 = load %struct.packed_git**, %struct.packed_git*** @all_packs, align 8
  %68 = load i64, i64* @pack_id, align 8
  %69 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %67, i64 %68
  store %struct.packed_git* %66, %struct.packed_git** %69, align 8
  %70 = load i32, i32* @the_repository, align 4
  %71 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %72 = call i32 @install_packed_git(i32 %70, %struct.packed_git* %71)
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i64, i64* @pack_edges, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %144

77:                                               ; preds = %65
  %78 = load i64, i64* @pack_edges, align 8
  %79 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %80 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @fprintf(i64 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %114, %77
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @branch_table_sz, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %117

87:                                               ; preds = %83
  %88 = load %struct.branch**, %struct.branch*** @branch_table, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.branch*, %struct.branch** %88, i64 %90
  %92 = load %struct.branch*, %struct.branch** %91, align 8
  store %struct.branch* %92, %struct.branch** %5, align 8
  br label %93

93:                                               ; preds = %109, %87
  %94 = load %struct.branch*, %struct.branch** %5, align 8
  %95 = icmp ne %struct.branch* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.branch*, %struct.branch** %5, align 8
  %98 = getelementptr inbounds %struct.branch, %struct.branch* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @pack_id, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i64, i64* @pack_edges, align 8
  %104 = load %struct.branch*, %struct.branch** %5, align 8
  %105 = getelementptr inbounds %struct.branch, %struct.branch* %104, i32 0, i32 1
  %106 = call i8* @oid_to_hex(i32* %105)
  %107 = call i32 @fprintf(i64 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.branch*, %struct.branch** %5, align 8
  %111 = getelementptr inbounds %struct.branch, %struct.branch* %110, i32 0, i32 2
  %112 = load %struct.branch*, %struct.branch** %111, align 8
  store %struct.branch* %112, %struct.branch** %5, align 8
  br label %93

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %83

117:                                              ; preds = %83
  %118 = load %struct.tag*, %struct.tag** @first_tag, align 8
  store %struct.tag* %118, %struct.tag** %6, align 8
  br label %119

119:                                              ; preds = %135, %117
  %120 = load %struct.tag*, %struct.tag** %6, align 8
  %121 = icmp ne %struct.tag* %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.tag*, %struct.tag** %6, align 8
  %124 = getelementptr inbounds %struct.tag, %struct.tag* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @pack_id, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i64, i64* @pack_edges, align 8
  %130 = load %struct.tag*, %struct.tag** %6, align 8
  %131 = getelementptr inbounds %struct.tag, %struct.tag* %130, i32 0, i32 1
  %132 = call i8* @oid_to_hex(i32* %131)
  %133 = call i32 @fprintf(i64 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %128, %122
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.tag*, %struct.tag** %6, align 8
  %137 = getelementptr inbounds %struct.tag, %struct.tag* %136, i32 0, i32 2
  %138 = load %struct.tag*, %struct.tag** %137, align 8
  store %struct.tag* %138, %struct.tag** %6, align 8
  br label %119

139:                                              ; preds = %119
  %140 = load i64, i64* @pack_edges, align 8
  %141 = call i32 @fputc(i8 signext 10, i64 %140)
  %142 = load i64, i64* @pack_edges, align 8
  %143 = call i32 @fflush(i64 %142)
  br label %144

144:                                              ; preds = %139, %65
  %145 = load i64, i64* @pack_id, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* @pack_id, align 8
  br label %157

147:                                              ; preds = %13
  br label %148

148:                                              ; preds = %147, %45
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @close(i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @unlink_or_warn(i32 %155)
  br label %157

157:                                              ; preds = %148, %144
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pack_data, align 8
  %159 = call i32 @FREE_AND_NULL(%struct.TYPE_6__* %158)
  store i32 0, i32* @end_packfile.running, align 4
  %160 = call i32 @strbuf_release(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @last_blob, i32 0, i32 2))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @last_blob, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @last_blob, i32 0, i32 0), align 8
  br label %161

161:                                              ; preds = %157, %12
  ret void
}

declare dso_local i32 @clear_delta_base_cache(...) #1

declare dso_local i32 @close_pack_windows(%struct.TYPE_6__*) #1

declare dso_local i32 @finalize_hashfile(i32, i32, i32) #1

declare dso_local i32 @fixup_pack_header_footer(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @loosen_small_pack(%struct.TYPE_6__*) #1

declare dso_local i32 @invalidate_pack_id(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @keep_pack(i32) #1

declare dso_local i32 @create_index(...) #1

declare dso_local %struct.packed_git* @add_packed_git(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @install_packed_git(i32, %struct.packed_git*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @fputc(i8 signext, i64) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @unlink_or_warn(i32) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_6__*) #1

declare dso_local i32 @strbuf_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
