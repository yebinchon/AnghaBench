; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_sort_snapshot.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_sort_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snapshot = type { i8*, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snapshot_record = type { i8*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"unterminated line found in packed-refs\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"unterminated peeled line found in packed-refs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snapshot*)* @sort_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_snapshot(%struct.snapshot* %0) #0 {
  %2 = alloca %struct.snapshot*, align 8
  %3 = alloca %struct.snapshot_record*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.snapshot* %0, %struct.snapshot** %2, align 8
  store %struct.snapshot_record* null, %struct.snapshot_record** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %15 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %16 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %19 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %205

25:                                               ; preds = %1
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %32 = load i64, i64* %10, align 8
  %33 = udiv i64 %32, 80
  %34 = add i64 %33, 20
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @ALLOC_GROW(%struct.snapshot_record* %31, i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %148, %25
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %41, label %150

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @memchr(i8* %42, i8 signext 10, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %59, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %54
  %67 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %68 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @die_invalid_line(i32 %71, i8* %72, i32 %78)
  br label %80

80:                                               ; preds = %66, %54
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ult i8* %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 94
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load i8*, i8** %9, align 8
  store i8* %92, i8** %14, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i8* @memchr(i8* %93, i8 signext 10, i32 %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %91
  %104 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %91
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  br label %108

108:                                              ; preds = %105, %86, %80
  %109 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %110, 1
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @ALLOC_GROW(%struct.snapshot_record* %109, i64 %111, i64 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %115, i64 %116
  %118 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %125, i64 %126
  %128 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 8
  %129 = load i64, i64* %5, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %108
  %134 = load i64, i64* %5, align 8
  %135 = icmp ugt i64 %134, 1
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %138 = load i64, i64* %5, align 8
  %139 = sub i64 %138, 2
  %140 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %137, i64 %139
  %141 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %142 = load i64, i64* %5, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %141, i64 %143
  %145 = call i64 @cmp_packed_ref_records(%struct.snapshot_record* %140, %struct.snapshot_record* %144)
  %146 = icmp sge i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %136, %133, %108
  %149 = load i8*, i8** %9, align 8
  store i8* %149, i8** %7, align 8
  br label %37

150:                                              ; preds = %37
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %202

154:                                              ; preds = %150
  %155 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @QSORT(%struct.snapshot_record* %155, i64 %156, i64 (%struct.snapshot_record*, %struct.snapshot_record*)* @cmp_packed_ref_records)
  %158 = load i64, i64* %10, align 8
  %159 = call i8* @xmalloc(i64 %158)
  store i8* %159, i8** %12, align 8
  %160 = load i8*, i8** %12, align 8
  store i8* %160, i8** %13, align 8
  store i64 0, i64* %11, align 8
  br label %161

161:                                              ; preds = %186, %154
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* %5, align 8
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %161
  %166 = load i8*, i8** %13, align 8
  %167 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %168 = load i64, i64* %11, align 8
  %169 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %167, i64 %168
  %170 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %172, i64 %173
  %175 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @memcpy(i8* %166, i8* %171, i32 %176)
  %178 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %179 = load i64, i64* %11, align 8
  %180 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %178, i64 %179
  %181 = getelementptr inbounds %struct.snapshot_record, %struct.snapshot_record* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %13, align 8
  br label %186

186:                                              ; preds = %165
  %187 = load i64, i64* %11, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %11, align 8
  br label %161

189:                                              ; preds = %161
  %190 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %191 = call i32 @clear_snapshot_buffer(%struct.snapshot* %190)
  %192 = load i8*, i8** %12, align 8
  %193 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %194 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  %195 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %196 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %195, i32 0, i32 2
  store i8* %192, i8** %196, align 8
  %197 = load i8*, i8** %12, align 8
  %198 = load i64, i64* %10, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load %struct.snapshot*, %struct.snapshot** %2, align 8
  %201 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %189, %153
  %203 = load %struct.snapshot_record*, %struct.snapshot_record** %3, align 8
  %204 = call i32 @free(%struct.snapshot_record* %203)
  br label %205

205:                                              ; preds = %202, %24
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.snapshot_record*, i64, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @die_invalid_line(i32, i8*, i32) #1

declare dso_local i64 @cmp_packed_ref_records(%struct.snapshot_record*, %struct.snapshot_record*) #1

declare dso_local i32 @QSORT(%struct.snapshot_record*, i64, i64 (%struct.snapshot_record*, %struct.snapshot_record*)*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @clear_snapshot_buffer(%struct.snapshot*) #1

declare dso_local i32 @free(%struct.snapshot_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
