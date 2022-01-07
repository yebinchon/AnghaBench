; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_check_message_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_check_message_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_message = type { i32, i64 }

@TXF_HAS_LEGACY_ID = common dso_local global i32 0, align 4
@TXF_HAS_LONG_LEGACY_ID = common dso_local global i32 0, align 4
@TXF_HAS_PEER_MSGID = common dso_local global i32 0, align 4
@MAX_EXTRA_MASK = common dso_local global i32 0, align 4
@index_extra_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_message_size(%struct.file_message* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.file_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file_message* %0, %struct.file_message** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.file_message*, %struct.file_message** %4, align 8
  %12 = getelementptr inbounds %struct.file_message, %struct.file_message* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TXF_HAS_LEGACY_ID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.file_message*, %struct.file_message** %4, align 8
  %22 = getelementptr inbounds %struct.file_message, %struct.file_message* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TXF_HAS_LONG_LEGACY_ID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load %struct.file_message*, %struct.file_message** %4, align 8
  %31 = getelementptr inbounds %struct.file_message, %struct.file_message* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TXF_HAS_LEGACY_ID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %27, %20
  %40 = load %struct.file_message*, %struct.file_message** %4, align 8
  %41 = getelementptr inbounds %struct.file_message, %struct.file_message* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TXF_HAS_PEER_MSGID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.file_message*, %struct.file_message** %4, align 8
  %51 = getelementptr inbounds %struct.file_message, %struct.file_message* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 16
  %54 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @index_extra_mask, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @extra_mask_intcount(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = add i64 16, %74
  %76 = icmp uge i64 %71, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.file_message*, %struct.file_message** %4, align 8
  %80 = getelementptr inbounds %struct.file_message, %struct.file_message* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  %88 = load i8, i8* %86, align 1
  %89 = zext i8 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 254
  br i1 %91, label %92, label %99

92:                                               ; preds = %49
  %93 = load i8*, i8** %8, align 8
  %94 = bitcast i8* %93 to i16*
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  store i32 %96, i32* %9, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %98, i8** %8, align 8
  br label %119

99:                                               ; preds = %49
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 255
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %107, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br label %114

114:                                              ; preds = %110, %102
  %115 = phi i1 [ false, %102 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  br label %118

118:                                              ; preds = %114, %99
  br label %119

119:                                              ; preds = %118, %92
  %120 = load i8**, i8*** %6, align 8
  %121 = icmp ne i8** %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %8, align 8
  %124 = load i8**, i8*** %6, align 8
  store i8* %123, i8** %124, align 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add i64 16, %128
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %129, %131
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ule i64 %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extra_mask_intcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
