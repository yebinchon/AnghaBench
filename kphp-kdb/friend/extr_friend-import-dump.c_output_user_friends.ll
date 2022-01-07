; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_output_user_friends.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_output_user_friends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.friend = type { i32, i32, %struct.friend* }
%struct.lev_setlist_long = type { i32, i32, i32*, i32 }
%struct.lev_setlist = type { i32, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lev_setlist_cat_long = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.lev_setlist_cat = type { i32, %struct.TYPE_2__*, i64 }

@MAX_IMPORT_FRIENDS = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"warning: user %d has %d friends, only %d imported\0A\00", align 1
@list_len_cnt = common dso_local global i32* null, align 8
@LEV_FR_SETLIST_LONG = common dso_local global i32 0, align 4
@LEV_FR_SETLIST = common dso_local global i64 0, align 8
@lists_output = common dso_local global i32 0, align 4
@LEV_FR_SETLIST_CAT_LONG = common dso_local global i32 0, align 4
@LEV_FR_SETLIST_CAT = common dso_local global i64 0, align 8
@ext_lists_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_user_friends(i32 %0, %struct.friend* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.friend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.friend*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lev_setlist_long*, align 8
  %10 = alloca %struct.lev_setlist*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca %struct.lev_setlist_cat_long*, align 8
  %13 = alloca %struct.lev_setlist_cat*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.friend* %1, %struct.friend** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.friend*, %struct.friend** %4, align 8
  store %struct.friend* %14, %struct.friend** %7, align 8
  %15 = load %struct.friend*, %struct.friend** %4, align 8
  %16 = icmp ne %struct.friend* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %218

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %30, %18
  %20 = load %struct.friend*, %struct.friend** %7, align 8
  %21 = icmp ne %struct.friend* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.friend*, %struct.friend** %7, align 8
  %24 = getelementptr inbounds %struct.friend, %struct.friend* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.friend*, %struct.friend** %7, align 8
  %32 = getelementptr inbounds %struct.friend, %struct.friend* %31, i32 0, i32 2
  %33 = load %struct.friend*, %struct.friend** %32, align 8
  store %struct.friend* %33, %struct.friend** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 1000000
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.friend*, %struct.friend** %4, align 8
  store %struct.friend* %41, %struct.friend** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MAX_IMPORT_FRIENDS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %40
  %46 = load i64, i64* @verbosity, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MAX_IMPORT_FRIENDS, align 4
  %53 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX_IMPORT_FRIENDS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.friend*, %struct.friend** %7, align 8
  %61 = getelementptr inbounds %struct.friend, %struct.friend* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.friend*, %struct.friend** %7, align 8
  %69 = getelementptr inbounds %struct.friend, %struct.friend* %68, i32 0, i32 2
  %70 = load %struct.friend*, %struct.friend** %69, align 8
  store %struct.friend* %70, %struct.friend** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %55

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32*, i32** @list_len_cnt, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %150, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = icmp sge i32 %84, 256
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = mul nsw i32 4, %87
  %89 = add nsw i32 12, %88
  %90 = call i8* @write_alloc(i32 %89)
  %91 = bitcast i8* %90 to %struct.lev_setlist_long*
  store %struct.lev_setlist_long* %91, %struct.lev_setlist_long** %9, align 8
  %92 = load i32, i32* @LEV_FR_SETLIST_LONG, align 4
  %93 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %9, align 8
  %94 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %9, align 8
  %97 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %9, align 8
  %100 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %9, align 8
  %102 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %8, align 8
  br label %128

107:                                              ; preds = %83
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 4, %108
  %110 = add nsw i32 8, %109
  %111 = call i8* @write_alloc(i32 %110)
  %112 = bitcast i8* %111 to %struct.lev_setlist*
  store %struct.lev_setlist* %112, %struct.lev_setlist** %10, align 8
  %113 = load i64, i64* @LEV_FR_SETLIST, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load %struct.lev_setlist*, %struct.lev_setlist** %10, align 8
  %118 = getelementptr inbounds %struct.lev_setlist, %struct.lev_setlist* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.lev_setlist*, %struct.lev_setlist** %10, align 8
  %121 = getelementptr inbounds %struct.lev_setlist, %struct.lev_setlist* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.lev_setlist*, %struct.lev_setlist** %10, align 8
  %123 = getelementptr inbounds %struct.lev_setlist, %struct.lev_setlist* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32* %127, i32** %8, align 8
  br label %128

128:                                              ; preds = %107, %86
  br label %129

129:                                              ; preds = %132, %128
  %130 = load %struct.friend*, %struct.friend** %7, align 8
  %131 = icmp ne %struct.friend* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load %struct.friend*, %struct.friend** %7, align 8
  %134 = getelementptr inbounds %struct.friend, %struct.friend* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 -1
  store i32* %137, i32** %8, align 8
  store i32 %135, i32* %137, align 4
  %138 = load %struct.friend*, %struct.friend** %7, align 8
  %139 = getelementptr inbounds %struct.friend, %struct.friend* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 1
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.friend*, %struct.friend** %7, align 8
  %145 = getelementptr inbounds %struct.friend, %struct.friend* %144, i32 0, i32 2
  %146 = load %struct.friend*, %struct.friend** %145, align 8
  store %struct.friend* %146, %struct.friend** %7, align 8
  br label %129

147:                                              ; preds = %129
  %148 = load i32, i32* @lists_output, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @lists_output, align 4
  br label %218

150:                                              ; preds = %74
  %151 = load i32, i32* %5, align 4
  %152 = icmp sge i32 %151, 256
  br i1 %152, label %153, label %174

153:                                              ; preds = %150
  %154 = load i32, i32* %5, align 4
  %155 = mul nsw i32 8, %154
  %156 = add nsw i32 12, %155
  %157 = call i8* @write_alloc(i32 %156)
  %158 = bitcast i8* %157 to %struct.lev_setlist_cat_long*
  store %struct.lev_setlist_cat_long* %158, %struct.lev_setlist_cat_long** %12, align 8
  %159 = load i32, i32* @LEV_FR_SETLIST_CAT_LONG, align 4
  %160 = load %struct.lev_setlist_cat_long*, %struct.lev_setlist_cat_long** %12, align 8
  %161 = getelementptr inbounds %struct.lev_setlist_cat_long, %struct.lev_setlist_cat_long* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.lev_setlist_cat_long*, %struct.lev_setlist_cat_long** %12, align 8
  %164 = getelementptr inbounds %struct.lev_setlist_cat_long, %struct.lev_setlist_cat_long* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.lev_setlist_cat_long*, %struct.lev_setlist_cat_long** %12, align 8
  %167 = getelementptr inbounds %struct.lev_setlist_cat_long, %struct.lev_setlist_cat_long* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.lev_setlist_cat_long*, %struct.lev_setlist_cat_long** %12, align 8
  %169 = getelementptr inbounds %struct.lev_setlist_cat_long, %struct.lev_setlist_cat_long* %168, i32 0, i32 2
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  store %struct.TYPE_2__* %173, %struct.TYPE_2__** %11, align 8
  br label %195

174:                                              ; preds = %150
  %175 = load i32, i32* %5, align 4
  %176 = mul nsw i32 8, %175
  %177 = add nsw i32 8, %176
  %178 = call i8* @write_alloc(i32 %177)
  %179 = bitcast i8* %178 to %struct.lev_setlist_cat*
  store %struct.lev_setlist_cat* %179, %struct.lev_setlist_cat** %13, align 8
  %180 = load i64, i64* @LEV_FR_SETLIST_CAT, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = load %struct.lev_setlist_cat*, %struct.lev_setlist_cat** %13, align 8
  %185 = getelementptr inbounds %struct.lev_setlist_cat, %struct.lev_setlist_cat* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* %3, align 4
  %187 = load %struct.lev_setlist_cat*, %struct.lev_setlist_cat** %13, align 8
  %188 = getelementptr inbounds %struct.lev_setlist_cat, %struct.lev_setlist_cat* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.lev_setlist_cat*, %struct.lev_setlist_cat** %13, align 8
  %190 = getelementptr inbounds %struct.lev_setlist_cat, %struct.lev_setlist_cat* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  store %struct.TYPE_2__* %194, %struct.TYPE_2__** %11, align 8
  br label %195

195:                                              ; preds = %174, %153
  br label %196

196:                                              ; preds = %199, %195
  %197 = load %struct.friend*, %struct.friend** %7, align 8
  %198 = icmp ne %struct.friend* %197, null
  br i1 %198, label %199, label %215

199:                                              ; preds = %196
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 -1
  store %struct.TYPE_2__* %201, %struct.TYPE_2__** %11, align 8
  %202 = load %struct.friend*, %struct.friend** %7, align 8
  %203 = getelementptr inbounds %struct.friend, %struct.friend* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.friend*, %struct.friend** %7, align 8
  %208 = getelementptr inbounds %struct.friend, %struct.friend* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.friend*, %struct.friend** %7, align 8
  %213 = getelementptr inbounds %struct.friend, %struct.friend* %212, i32 0, i32 2
  %214 = load %struct.friend*, %struct.friend** %213, align 8
  store %struct.friend* %214, %struct.friend** %7, align 8
  br label %196

215:                                              ; preds = %196
  %216 = load i32, i32* @ext_lists_output, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @ext_lists_output, align 4
  br label %218

218:                                              ; preds = %17, %215, %147
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i8* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
