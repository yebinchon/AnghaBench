; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_add_letter_priority.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_add_letter_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i8*, i32 }

@MAX_LETTER_SIZE = common dso_local global i64 0, align 8
@id_to_letter = common dso_local global i32 0, align 4
@letter_buf = common dso_local global %struct.TYPE_6__* null, align 8
@field_names = common dso_local global i32* null, align 8
@field_value_len = common dso_local global i32* null, align 8
@field_value = common dso_local global i8** null, align 8
@FIELDS_N = common dso_local global i32 0, align 4
@field_n = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%010d\00", align 1
@now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%010d:\22%s\22;}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_letter_priority(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* @MAX_LETTER_SIZE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %215

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = call i8** @map_ll_vptr_get(i32* @id_to_letter, i64 %23)
  store i8** %24, i8*** %10, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %214

27:                                               ; preds = %22
  %28 = load i8**, i8*** %10, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br label %43

43:                                               ; preds = %38, %33, %27
  %44 = phi i1 [ false, %33 ], [ false, %27 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @letter_buf, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @memcpy(i32 %65, i8* %70, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @letter_buf, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_fields(i32 %76)
  %78 = icmp sge i32 %77, 4
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32*, i32** @field_names, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @get_field(i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %94

87:                                               ; preds = %43
  %88 = load i32*, i32** @field_value_len, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br label %94

94:                                               ; preds = %87, %43
  %95 = phi i1 [ false, %43 ], [ %93, %87 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 48, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8**, i8*** @field_value, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 %100, i8* %106, align 1
  %107 = load i32*, i32** @field_names, align 8
  %108 = load i32, i32* @FIELDS_N, align 4
  %109 = sub nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @get_field(i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %148

116:                                              ; preds = %94
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @field_n, align 4
  %119 = sub nsw i32 %118, 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load i32*, i32** @field_value_len, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 10
  br label %128

128:                                              ; preds = %121, %116
  %129 = phi i1 [ false, %116 ], [ %127, %121 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i8**, i8*** @field_value, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** @field_value, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @now, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  %145 = sub nsw i32 %144, 1
  %146 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = getelementptr inbounds i8, i8* %136, i64 %146
  store i8 34, i8* %147, align 1
  br label %149

148:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %128
  %150 = load i32*, i32** @field_names, align 8
  %151 = load i32, i32* @FIELDS_N, align 4
  %152 = sub nsw i32 %151, 3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_field(i32 %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @field_n, align 4
  %159 = sub nsw i32 %158, 3
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %149
  %162 = load i32*, i32** @field_value_len, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 10
  br label %168

168:                                              ; preds = %161, %149
  %169 = phi i1 [ false, %149 ], [ %167, %161 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i8**, i8*** @field_value, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load i8**, i8*** @field_value, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* @now, align 4
  %183 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds i8, i8* %176, i64 %183
  store i8 34, i8* %184, align 1
  %185 = load i32*, i32** @field_names, align 8
  %186 = load i32, i32* @FIELDS_N, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @get_field(i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @field_n, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp eq i32 %192, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i8**, i8*** @field_value, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 -12
  %204 = load i8*, i8** %9, align 8
  %205 = call i64 @strlen(i8* %204)
  %206 = trunc i64 %205 to i32
  %207 = load i8*, i8** %9, align 8
  %208 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %206, i8* %207)
  %209 = load i64, i64* %6, align 8
  %210 = call i32 @delete_letter(i64 %209)
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @letter_add(i32 %211, i32 %212)
  store i32 1, i32* %5, align 4
  br label %215

214:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %214, %168, %21
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8** @map_ll_vptr_get(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @get_fields(i32) #1

declare dso_local i32 @get_field(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @delete_letter(i64) #1

declare dso_local i32 @letter_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
