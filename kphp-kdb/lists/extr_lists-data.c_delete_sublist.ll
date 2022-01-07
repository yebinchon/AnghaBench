; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_delete_sublist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_delete_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.lev_generic = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.lev_del_entry = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"delete_sublist\0A\00", align 1
@metafile_mode = common dso_local global i32 0, align 4
@f_xor_c = common dso_local global i32 0, align 4
@f_and_c = common dso_local global i32 0, align 4
@f_cnt = common dso_local global i32 0, align 4
@array_delete_sublist = common dso_local global i32 0, align 4
@in_array = common dso_local global i32 0, align 4
@tree_delete_sublist = common dso_local global i32 0, align 4
@in_tree = common dso_local global i32 0, align 4
@temp_object_list_size = common dso_local global i32 0, align 4
@M_tot_entries = common dso_local global i32 0, align 4
@temp_object_buff_size = common dso_local global i32 0, align 4
@temp_object_buff = common dso_local global i32* null, align 8
@temp_object_list = common dso_local global i32* null, align 8
@OTree = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MAXINT = common dso_local global i32 0, align 4
@lev_list_object_bytes = common dso_local global i64 0, align 8
@LEV_LI_DEL_ENTRY = common dso_local global i32 0, align 4
@postponed_replay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.lev_generic*)* @delete_sublist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_sublist(i32 %0, i32 %1, %struct.lev_generic* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_generic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.lev_del_entry*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.lev_generic* %2, %struct.lev_generic** %7, align 8
  %17 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @metafile_mode, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_list_metafile(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @check_metafile_loaded(i32 %26, i32 -1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.lev_generic*, %struct.lev_generic** %7, align 8
  %32 = call i32 @postpone(i32 %30, %struct.lev_generic* %31)
  store i32 1, i32* %4, align 4
  br label %217

33:                                               ; preds = %25
  %34 = load i32, i32* @metafile_mode, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.lev_generic*, %struct.lev_generic** %7, align 8
  %40 = call i32 @postpone(i32 %38, %struct.lev_generic* %39)
  br label %49

41:                                               ; preds = %33
  %42 = load i32, i32* @metafile_mode, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mark_list_metafile(i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %20
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.TYPE_8__* @get_list_m(i32 %53)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @conv_list_id(i32 %63)
  %65 = icmp slt i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 -1, i32 0
  store i32 %67, i32* %4, align 4
  br label %217

68:                                               ; preds = %52
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = call i32 @unpack_metafile_pointers(%struct.TYPE_8__* %69)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %90, %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = xor i32 %75, %76
  %78 = and i32 %77, 7
  %79 = load i32, i32* %13, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @metafile_get_sublist_size(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %82, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %217

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* @f_xor_c, align 4
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* @f_and_c, align 4
  store i32 0, i32* @f_cnt, align 4
  %100 = load i32, i32* @array_delete_sublist, align 4
  store i32 %100, i32* @in_array, align 4
  %101 = load i32, i32* @tree_delete_sublist, align 4
  store i32 %101, i32* @in_tree, align 4
  store i64 0, i64* %14, align 8
  %102 = load i32, i32* @metafile_mode, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %97
  store i32 0, i32* @temp_object_list_size, align 4
  %106 = load i32, i32* @M_tot_entries, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %106, %111
  %113 = load i32, i32* @temp_object_buff_size, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32*, i32** @temp_object_buff, align 8
  store i32* %116, i32** @temp_object_list, align 8
  br label %129

117:                                              ; preds = %105
  %118 = load i32, i32* @M_tot_entries, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %118, %123
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  store i64 %126, i64* %14, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i32* @zzmalloc(i64 %127)
  store i32* %128, i32** @temp_object_list, align 8
  br label %129

129:                                              ; preds = %117, %115
  br label %130

130:                                              ; preds = %129, %97
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @OTree, i32 0, i32 1), align 8
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @OTree, i32 0, i32 0), align 8
  %133 = sub nsw i64 %132, 1
  %134 = load i32, i32* @MAXINT, align 4
  %135 = call i32 @listree_delete_some_range_rec_large(i32 %131, %struct.TYPE_9__* @OTree, i32 0, i64 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32, i32* @metafile_mode, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %198

143:                                              ; preds = %130
  %144 = load i64, i64* @lev_list_object_bytes, align 8
  %145 = add i64 4, %144
  %146 = call %struct.lev_del_entry* @zmalloc(i64 %145)
  store %struct.lev_del_entry* %146, %struct.lev_del_entry** %15, align 8
  %147 = load i32, i32* @LEV_LI_DEL_ENTRY, align 4
  %148 = load %struct.lev_del_entry*, %struct.lev_del_entry** %15, align 8
  %149 = getelementptr inbounds %struct.lev_del_entry, %struct.lev_del_entry* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @postponed_replay, align 4
  store i32 %150, i32* %16, align 4
  store i32 1, i32* @postponed_replay, align 4
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %181, %143
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @temp_object_list_size, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @FIRST_INT(i32 %156)
  %158 = load %struct.lev_del_entry*, %struct.lev_del_entry** %15, align 8
  %159 = bitcast %struct.lev_del_entry* %158 to %struct.lev_generic*
  %160 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  %161 = load %struct.lev_del_entry*, %struct.lev_del_entry** %15, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32*, i32** @temp_object_list, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @upcopy_list_object_id(%struct.lev_del_entry* %161, i32 %162, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i32*, i32** @temp_object_list, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.lev_del_entry*, %struct.lev_del_entry** %15, align 8
  %176 = bitcast %struct.lev_del_entry* %175 to %struct.lev_generic*
  %177 = call i64 @delete_entry(i32 %169, i32 %174, i32 0, %struct.lev_generic* %176)
  %178 = icmp sge i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  br label %181

181:                                              ; preds = %155
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %151

184:                                              ; preds = %151
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* @postponed_replay, align 4
  %186 = load %struct.lev_del_entry*, %struct.lev_del_entry** %15, align 8
  %187 = load i64, i64* @lev_list_object_bytes, align 8
  %188 = add i64 4, %187
  %189 = call i32 @zfree(%struct.lev_del_entry* %186, i64 %188)
  %190 = load i32*, i32** @temp_object_list, align 8
  %191 = load i32*, i32** @temp_object_buff, align 8
  %192 = icmp ne i32* %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %184
  %194 = load i32*, i32** @temp_object_list, align 8
  %195 = load i64, i64* %14, align 8
  %196 = call i32 @zzfree(i32* %194, i64 %195)
  br label %197

197:                                              ; preds = %193, %184
  br label %198

198:                                              ; preds = %197, %130
  %199 = load i32, i32* @M_tot_entries, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %199, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %198
  %208 = load i32, i32* @metafile_mode, align 4
  %209 = and i32 %208, 2
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @delete_list(i32 %212, i32 0)
  %214 = call i32 @assert(i32 %213)
  br label %215

215:                                              ; preds = %211, %207, %198
  %216 = load i32, i32* @f_cnt, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %215, %96, %62, %29
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @get_list_metafile(i32) #1

declare dso_local i32 @check_metafile_loaded(i32, i32) #1

declare dso_local i32 @postpone(i32, %struct.lev_generic*) #1

declare dso_local i32 @mark_list_metafile(i32) #1

declare dso_local %struct.TYPE_8__* @get_list_m(i32) #1

declare dso_local i64 @conv_list_id(i32) #1

declare dso_local i32 @unpack_metafile_pointers(%struct.TYPE_8__*) #1

declare dso_local i64 @metafile_get_sublist_size(i32) #1

declare dso_local i32* @zzmalloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @listree_delete_some_range_rec_large(i32, %struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local %struct.lev_del_entry* @zmalloc(i64) #1

declare dso_local i32 @FIRST_INT(i32) #1

declare dso_local i32 @upcopy_list_object_id(%struct.lev_del_entry*, i32, i32) #1

declare dso_local i64 @delete_entry(i32, i32, i32, %struct.lev_generic*) #1

declare dso_local i32 @zfree(%struct.lev_del_entry*, i64) #1

declare dso_local i32 @zzfree(i32*, i64) #1

declare dso_local i32 @delete_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
