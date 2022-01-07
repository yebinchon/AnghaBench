; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_add_friend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_add_friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_friend = type { i32, i32 }
%struct.lev_del_friend = type { i32 }
%struct.lev_generic = type { i32 }

@LEV_FR_ADD_FRIEND = common dso_local global i64 0, align 8
@LEV_FR_REMFROM_CAT = common dso_local global i64 0, align 8
@LEV_FR_EDIT_FRIEND_AND = common dso_local global i64 0, align 8
@LEV_FR_EDIT_FRIEND = common dso_local global i64 0, align 8
@LEV_FR_ADDTO_CAT = common dso_local global i64 0, align 8
@LEV_FR_EDIT_FRIEND_OR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_friend(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_add_friend*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lev_del_friend*, align 8
  %17 = alloca %struct.lev_add_friend*, align 8
  %18 = alloca %struct.lev_add_friend*, align 8
  %19 = alloca %struct.lev_del_friend*, align 8
  %20 = alloca %struct.lev_add_friend*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @conv_uid(i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %5
  store i32 -1, i32* %6, align 4
  br label %196

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %34
  store i32 -1, i32* %6, align 4
  br label %196

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i64, i64* @LEV_FR_ADD_FRIEND, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @alloc_log_event(i64 %47, i32 16, i32 %48)
  %50 = bitcast i8* %49 to %struct.lev_add_friend*
  store %struct.lev_add_friend* %50, %struct.lev_add_friend** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.lev_add_friend*, %struct.lev_add_friend** %12, align 8
  %53 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, 1
  %56 = load %struct.lev_add_friend*, %struct.lev_add_friend** %12, align 8
  %57 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.lev_add_friend*, %struct.lev_add_friend** %12, align 8
  %59 = bitcast %struct.lev_add_friend* %58 to %struct.lev_generic*
  %60 = call i32 @change_friend_logevent(%struct.lev_generic* %59)
  store i32 %60, i32* %6, align 4
  br label %196

61:                                               ; preds = %43
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 2147483646
  %64 = icmp eq i32 %63, 2147483646
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @get_friend_cat(i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %196

72:                                               ; preds = %65, %61
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @get_user(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 -1, i32* %6, align 4
  br label %196

77:                                               ; preds = %72
  store i32 -1, i32* %15, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %81, 2147483646
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %77
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @b_log2(i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i64, i64* @LEV_FR_REMFROM_CAT, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load i32, i32* %7, align 4
  %99 = call i8* @alloc_log_event(i64 %97, i32 12, i32 %98)
  %100 = bitcast i8* %99 to %struct.lev_del_friend*
  store %struct.lev_del_friend* %100, %struct.lev_del_friend** %16, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.lev_del_friend*, %struct.lev_del_friend** %16, align 8
  %103 = getelementptr inbounds %struct.lev_del_friend, %struct.lev_del_friend* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lev_del_friend*, %struct.lev_del_friend** %16, align 8
  %105 = bitcast %struct.lev_del_friend* %104 to %struct.lev_generic*
  %106 = call i32 @change_friend_logevent(%struct.lev_generic* %105)
  store i32 %106, i32* %15, align 4
  br label %127

107:                                              ; preds = %85
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 2147483646
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i64, i64* @LEV_FR_EDIT_FRIEND_AND, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i8* @alloc_log_event(i64 %112, i32 16, i32 %113)
  %115 = bitcast i8* %114 to %struct.lev_add_friend*
  store %struct.lev_add_friend* %115, %struct.lev_add_friend** %17, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.lev_add_friend*, %struct.lev_add_friend** %17, align 8
  %118 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, 1
  %121 = load %struct.lev_add_friend*, %struct.lev_add_friend** %17, align 8
  %122 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.lev_add_friend*, %struct.lev_add_friend** %17, align 8
  %124 = bitcast %struct.lev_add_friend* %123 to %struct.lev_generic*
  %125 = call i32 @change_friend_logevent(%struct.lev_generic* %124)
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %111, %107
  br label %127

127:                                              ; preds = %126, %91
  br label %128

128:                                              ; preds = %127, %77
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 2147483646
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 2147483646
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %128
  %135 = load i64, i64* @LEV_FR_EDIT_FRIEND, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i8* @alloc_log_event(i64 %135, i32 16, i32 %136)
  %138 = bitcast i8* %137 to %struct.lev_add_friend*
  store %struct.lev_add_friend* %138, %struct.lev_add_friend** %18, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.lev_add_friend*, %struct.lev_add_friend** %18, align 8
  %141 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, 1
  %144 = load %struct.lev_add_friend*, %struct.lev_add_friend** %18, align 8
  %145 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.lev_add_friend*, %struct.lev_add_friend** %18, align 8
  %147 = bitcast %struct.lev_add_friend* %146 to %struct.lev_generic*
  %148 = call i32 @change_friend_logevent(%struct.lev_generic* %147)
  store i32 %148, i32* %15, align 4
  br label %190

149:                                              ; preds = %128
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %189

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %154, 1
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @b_log2(i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i64, i64* @LEV_FR_ADDTO_CAT, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load i32, i32* %7, align 4
  %166 = call i8* @alloc_log_event(i64 %164, i32 12, i32 %165)
  %167 = bitcast i8* %166 to %struct.lev_del_friend*
  store %struct.lev_del_friend* %167, %struct.lev_del_friend** %19, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.lev_del_friend*, %struct.lev_del_friend** %19, align 8
  %170 = getelementptr inbounds %struct.lev_del_friend, %struct.lev_del_friend* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load %struct.lev_del_friend*, %struct.lev_del_friend** %19, align 8
  %172 = bitcast %struct.lev_del_friend* %171 to %struct.lev_generic*
  %173 = call i32 @change_friend_logevent(%struct.lev_generic* %172)
  store i32 %173, i32* %15, align 4
  br label %188

174:                                              ; preds = %152
  %175 = load i64, i64* @LEV_FR_EDIT_FRIEND_OR, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i8* @alloc_log_event(i64 %175, i32 16, i32 %176)
  %178 = bitcast i8* %177 to %struct.lev_add_friend*
  store %struct.lev_add_friend* %178, %struct.lev_add_friend** %20, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.lev_add_friend*, %struct.lev_add_friend** %20, align 8
  %181 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.lev_add_friend*, %struct.lev_add_friend** %20, align 8
  %184 = getelementptr inbounds %struct.lev_add_friend, %struct.lev_add_friend* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.lev_add_friend*, %struct.lev_add_friend** %20, align 8
  %186 = bitcast %struct.lev_add_friend* %185 to %struct.lev_generic*
  %187 = call i32 @change_friend_logevent(%struct.lev_generic* %186)
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %174, %158
  br label %189

189:                                              ; preds = %188, %149
  br label %190

190:                                              ; preds = %189, %134
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, -1
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32, i32* %15, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %190, %76, %68, %46, %42, %30
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @change_friend_logevent(%struct.lev_generic*) #1

declare dso_local i32 @get_friend_cat(i32, i32) #1

declare dso_local i32 @get_user(i32) #1

declare dso_local i32 @b_log2(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
