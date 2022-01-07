; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_handle_range_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_handle_range_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.dir_entry = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.lazy_entry = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cache entry out of order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i32, i32, %struct.dir_entry*, %struct.strbuf*, %struct.lazy_entry*, %struct.dir_entry**)* @handle_range_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_range_dir(%struct.index_state* %0, i32 %1, i32 %2, %struct.dir_entry* %3, %struct.strbuf* %4, %struct.lazy_entry* %5, %struct.dir_entry** %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dir_entry*, align 8
  %12 = alloca %struct.strbuf*, align 8
  %13 = alloca %struct.lazy_entry*, align 8
  %14 = alloca %struct.dir_entry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dir_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.dir_entry* %3, %struct.dir_entry** %11, align 8
  store %struct.strbuf* %4, %struct.strbuf** %12, align 8
  store %struct.lazy_entry* %5, %struct.lazy_entry** %13, align 8
  store %struct.dir_entry** %6, %struct.dir_entry*** %14, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.index_state*, %struct.index_state** %8, align 8
  %27 = load %struct.dir_entry*, %struct.dir_entry** %11, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %29 = call %struct.dir_entry* @hash_dir_entry_with_parent_and_prefix(%struct.index_state* %26, %struct.dir_entry* %27, %struct.strbuf* %28)
  store %struct.dir_entry* %29, %struct.dir_entry** %18, align 8
  %30 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %31 = call i32 @strbuf_addch(%struct.strbuf* %30, i8 signext 47)
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %16, align 4
  br label %134

38:                                               ; preds = %7
  %39 = load %struct.index_state*, %struct.index_state** %8, align 8
  %40 = getelementptr inbounds %struct.index_state, %struct.index_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strncmp(i32 %48, i32 %51, i32 %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  br label %133

60:                                               ; preds = %38
  %61 = load %struct.index_state*, %struct.index_state** %8, align 8
  %62 = getelementptr inbounds %struct.index_state, %struct.index_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strncmp(i32 %70, i32 %73, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %60
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %16, align 4
  br label %132

81:                                               ; preds = %60
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp sge i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %88

88:                                               ; preds = %129, %81
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %130

92:                                               ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = sub nsw i32 %94, %95
  %97 = ashr i32 %96, 1
  %98 = add nsw i32 %93, %97
  store i32 %98, i32* %21, align 4
  %99 = load %struct.index_state*, %struct.index_state** %8, align 8
  %100 = getelementptr inbounds %struct.index_state, %struct.index_state* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %100, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %101, i64 %103
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @strncmp(i32 %107, i32 %110, i32 %113)
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %92
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %19, align 4
  br label %129

121:                                              ; preds = %92
  %122 = load i32, i32* %22, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %21, align 4
  store i32 %125, i32* %20, align 4
  br label %128

126:                                              ; preds = %121
  %127 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %124
  br label %129

129:                                              ; preds = %128, %118
  br label %88

130:                                              ; preds = %88
  %131 = load i32, i32* %19, align 4
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %130, %79
  br label %133

133:                                              ; preds = %132, %57
  br label %134

134:                                              ; preds = %133, %36
  %135 = load %struct.index_state*, %struct.index_state** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.dir_entry*, %struct.dir_entry** %18, align 8
  %139 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %140 = load %struct.lazy_entry*, %struct.lazy_entry** %13, align 8
  %141 = call i32 @handle_range_1(%struct.index_state* %135, i32 %136, i32 %137, %struct.dir_entry* %138, %struct.strbuf* %139, %struct.lazy_entry* %140)
  store i32 %141, i32* %15, align 4
  %142 = load %struct.strbuf*, %struct.strbuf** %12, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @strbuf_setlen(%struct.strbuf* %142, i32 %143)
  %145 = load %struct.dir_entry*, %struct.dir_entry** %18, align 8
  %146 = load %struct.dir_entry**, %struct.dir_entry*** %14, align 8
  store %struct.dir_entry* %145, %struct.dir_entry** %146, align 8
  %147 = load i32, i32* %15, align 4
  ret i32 %147
}

declare dso_local %struct.dir_entry* @hash_dir_entry_with_parent_and_prefix(%struct.index_state*, %struct.dir_entry*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @handle_range_1(%struct.index_state*, i32, i32, %struct.dir_entry*, %struct.strbuf*, %struct.lazy_entry*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
