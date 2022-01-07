; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_cmp_in_block_with_wsd.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_cmp_in_block_with_wsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.emitted_diff_symbol* }
%struct.emitted_diff_symbol = type { i32, i8*, i32, i32 }
%struct.moved_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i64 }
%struct.moved_block = type { i32 }

@INDENT_BLANKLINE = common dso_local global i32 0, align 4
@DIFF_SYMBOL_PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, %struct.moved_entry*, %struct.moved_entry*, %struct.moved_block*, i32)* @cmp_in_block_with_wsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_in_block_with_wsd(%struct.diff_options* %0, %struct.moved_entry* %1, %struct.moved_entry* %2, %struct.moved_block* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_options*, align 8
  %8 = alloca %struct.moved_entry*, align 8
  %9 = alloca %struct.moved_entry*, align 8
  %10 = alloca %struct.moved_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.emitted_diff_symbol*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %7, align 8
  store %struct.moved_entry* %1, %struct.moved_entry** %8, align 8
  store %struct.moved_entry* %2, %struct.moved_entry** %9, align 8
  store %struct.moved_block* %3, %struct.moved_block** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.diff_options*, %struct.diff_options** %7, align 8
  %25 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %28, i64 %30
  store %struct.emitted_diff_symbol* %31, %struct.emitted_diff_symbol** %12, align 8
  %32 = load %struct.moved_entry*, %struct.moved_entry** %8, align 8
  %33 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = load %struct.moved_entry*, %struct.moved_entry** %9, align 8
  %38 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %14, align 4
  %42 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %12, align 8
  %43 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %15, align 4
  %45 = load %struct.moved_entry*, %struct.moved_entry** %8, align 8
  %46 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %16, align 8
  %50 = load %struct.moved_entry*, %struct.moved_entry** %9, align 8
  %51 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %17, align 8
  %55 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %12, align 8
  %56 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %18, align 8
  %58 = load %struct.moved_entry*, %struct.moved_entry** %8, align 8
  %59 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %19, align 4
  %63 = load %struct.moved_entry*, %struct.moved_entry** %8, align 8
  %64 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %20, align 4
  %68 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %12, align 8
  %69 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %21, align 4
  %71 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %12, align 8
  %72 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %152

78:                                               ; preds = %5
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @INDENT_BLANKLINE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* @INDENT_BLANKLINE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %152

87:                                               ; preds = %82, %78
  %88 = load %struct.moved_entry*, %struct.moved_entry** %8, align 8
  %89 = getelementptr inbounds %struct.moved_entry, %struct.moved_entry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DIFF_SYMBOL_PLUS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %22, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %23, align 4
  br label %103

99:                                               ; preds = %87
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %20, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %23, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.moved_block*, %struct.moved_block** %10, align 8
  %105 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @INDENT_BLANKLINE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* %23, align 4
  %111 = load %struct.moved_block*, %struct.moved_block** %10, align 8
  %112 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %23, align 4
  %115 = load %struct.moved_block*, %struct.moved_block** %10, align 8
  %116 = getelementptr inbounds %struct.moved_block, %struct.moved_block* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %113
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %19, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %21, align 4
  %125 = sub nsw i32 %123, %124
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %119
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @memcmp(i8* %128, i8* %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %127
  %134 = load i8*, i8** %16, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8*, i8** %18, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %19, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32 @memcmp(i8* %137, i8* %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %133, %127, %119, %113
  %149 = phi i1 [ false, %127 ], [ false, %119 ], [ false, %113 ], [ %147, %133 ]
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %148, %86, %77
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
