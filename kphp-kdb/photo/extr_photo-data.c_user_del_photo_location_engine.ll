; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_del_photo_location_engine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_del_photo_location_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_only = common dso_local global i64 0, align 8
@location_buf = common dso_local global i8* null, align 8
@mode = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_del_photo_location_engine(i32* %0, i32 %1, i32 %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp slt i32 %33, 97
  br i1 %34, label %45, label %35

35:                                               ; preds = %31, %5
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sgt i32 %37, 122
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %35, %31
  store i32 0, i32* %6, align 4
  br label %194

46:                                               ; preds = %42
  %47 = load i64, i64* @write_only, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %194

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = call signext i8 @user_loaded(i32* %51)
  %53 = call i32 @assert(i8 signext %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @user_photo_get_location(i32* %54, i32 %55, i32 %56, i32 1, i32* %12)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %194

61:                                               ; preds = %50
  %62 = load i8*, i8** @location_buf, align 8
  store i8* %62, i8** %14, align 8
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* @mode, align 1
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %75, %77
  %79 = sub nsw i32 0, %78
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 16
  %82 = add i64 %81, 1
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %15, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i8*, i8** %13, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %13, align 8
  br label %96

96:                                               ; preds = %71, %65, %61
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %14, align 8
  store i8* %97, i8** %16, align 8
  store i8 0, i8* %17, align 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i8 0, i8* %24, align 1
  store i8 0, i8* %25, align 1
  store i64 0, i64* %27, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %13, align 8
  %104 = load i8, i8* %102, align 1
  %105 = sext i8 %104 to i32
  br label %107

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %101
  %108 = phi i32 [ %105, %101 ], [ 0, %106 ]
  store i32 %108, i32* %23, align 4
  br label %109

109:                                              ; preds = %177, %107
  %110 = load i32, i32* %23, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %180

112:                                              ; preds = %109
  %113 = load i8*, i8** %13, align 8
  %114 = load i8, i8* %24, align 1
  %115 = call i32 @READ_CHAR(i8* %113, i8 signext %114)
  %116 = load i8, i8* %24, align 1
  %117 = call i32 @assert(i8 signext %116)
  %118 = load i8, i8* %24, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %112
  %122 = load i8, i8* %24, align 1
  %123 = sext i8 %122 to i32
  %124 = mul nsw i32 %123, -1
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %24, align 1
  %126 = load i8*, i8** %13, align 8
  %127 = load i8, i8* %26, align 1
  %128 = call i32 @READ_CHAR(i8* %126, i8 signext %127)
  %129 = load i8, i8* %26, align 1
  %130 = sext i8 %129 to i32
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %19, align 4
  br label %140

133:                                              ; preds = %112
  %134 = load i8*, i8** %13, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @READ_INT(i8* %134, i32 %135)
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %19, align 4
  %139 = call i32 @READ_INT(i8* %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %121
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @READ_INT(i8* %141, i32 %142)
  %144 = load i8*, i8** %13, align 8
  %145 = load i64, i64* %27, align 8
  %146 = call i32 @READ_LONG(i8* %144, i64 %145)
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %155

149:                                              ; preds = %140
  %150 = load i32, i32* %11, align 4
  %151 = load i8, i8* %24, align 1
  %152 = sext i8 %151 to i32
  %153 = ashr i32 %152, 5
  %154 = icmp ne i32 %150, %153
  br i1 %154, label %168, label %155

155:                                              ; preds = %149, %140
  %156 = load i8, i8* %10, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = load i8, i8* %10, align 1
  %161 = sext i8 %160 to i32
  %162 = sub nsw i32 %161, 97
  %163 = add nsw i32 %162, 1
  %164 = load i8, i8* %24, align 1
  %165 = sext i8 %164 to i32
  %166 = and i32 %165, 31
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %159, %149
  %169 = load i8*, i8** %14, align 8
  %170 = load i8, i8* %24, align 1
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i64, i64* %27, align 8
  %175 = call i32 @save_location(i8* %169, i8 signext %170, i32 %171, i32 %172, i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %168, %159, %155
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %23, align 4
  br label %109

180:                                              ; preds = %109
  %181 = load i8, i8* %17, align 1
  %182 = load i8*, i8** %16, align 8
  store i8 %181, i8* %182, align 1
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i8*, i8** @location_buf, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = load i8*, i8** @location_buf, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = call i32 @user_photo_set_location(i32* %183, i32 %184, i32 %185, i8* %186, i32 %192)
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %180, %60, %49, %45
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i32 @assert(i8 signext) #1

declare dso_local signext i8 @user_loaded(i32*) #1

declare dso_local i8* @user_photo_get_location(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @READ_CHAR(i8*, i8 signext) #1

declare dso_local i32 @READ_INT(i8*, i32) #1

declare dso_local i32 @READ_LONG(i8*, i64) #1

declare dso_local i32 @save_location(i8*, i8 signext, i32, i32, i32, i64) #1

declare dso_local i32 @user_photo_set_location(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
