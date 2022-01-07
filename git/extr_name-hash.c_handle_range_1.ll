; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_handle_range_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_handle_range_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i8* }
%struct.dir_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.lazy_entry = type { i32, i32, %struct.dir_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i32, i32, %struct.dir_entry*, %struct.strbuf*, %struct.lazy_entry*)* @handle_range_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_range_1(%struct.index_state* %0, i32 %1, i32 %2, %struct.dir_entry* %3, %struct.strbuf* %4, %struct.lazy_entry* %5) #0 {
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dir_entry*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.lazy_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cache_entry*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dir_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.dir_entry* %3, %struct.dir_entry** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  store %struct.lazy_entry* %5, %struct.lazy_entry** %12, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %165, %94, %87, %6
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %168

29:                                               ; preds = %25
  %30 = load %struct.index_state*, %struct.index_state** %7, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  %32 = load %struct.cache_entry**, %struct.cache_entry*** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %32, i64 %34
  %36 = load %struct.cache_entry*, %struct.cache_entry** %35, align 8
  store %struct.cache_entry* %36, %struct.cache_entry** %15, align 8
  %37 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strncmp(i8* %44, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %168

54:                                               ; preds = %41, %29
  %55 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8* %62, i8** %16, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 47)
  store i8* %64, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %110

67:                                               ; preds = %54
  %68 = load i8*, i8** %17, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @strbuf_add(%struct.strbuf* %74, i8* %75, i32 %76)
  %78 = load %struct.index_state*, %struct.index_state** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %82 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %83 = load %struct.lazy_entry*, %struct.lazy_entry** %12, align 8
  %84 = call i32 @handle_range_dir(%struct.index_state* %78, i32 %79, i32 %80, %struct.dir_entry* %81, %struct.strbuf* %82, %struct.lazy_entry* %83, %struct.dir_entry** %20)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %67
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %14, align 4
  %91 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @strbuf_setlen(%struct.strbuf* %91, i32 %92)
  br label %25

94:                                               ; preds = %67
  %95 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %96 = call i32 @strbuf_addch(%struct.strbuf* %95, i8 signext 47)
  %97 = load %struct.index_state*, %struct.index_state** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.dir_entry*, %struct.dir_entry** %20, align 8
  %101 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %102 = load %struct.lazy_entry*, %struct.lazy_entry** %12, align 8
  %103 = call i32 @handle_range_1(%struct.index_state* %97, i32 %98, i32 %99, %struct.dir_entry* %100, %struct.strbuf* %101, %struct.lazy_entry* %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @strbuf_setlen(%struct.strbuf* %107, i32 %108)
  br label %25

110:                                              ; preds = %54
  %111 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %112 = load %struct.lazy_entry*, %struct.lazy_entry** %12, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %112, i64 %114
  %116 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %115, i32 0, i32 2
  store %struct.dir_entry* %111, %struct.dir_entry** %116, align 8
  %117 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %118 = icmp ne %struct.dir_entry* %117, null
  br i1 %118, label %119, label %153

119:                                              ; preds = %110
  %120 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %121 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %125 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %128 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %133 = call i32 @ce_namelen(%struct.cache_entry* %132)
  %134 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %135 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = call i32 @memihash_cont(i32 %123, i8* %131, i32 %137)
  %139 = load %struct.lazy_entry*, %struct.lazy_entry** %12, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %139, i64 %141
  %143 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 8
  %144 = load %struct.dir_entry*, %struct.dir_entry** %10, align 8
  %145 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.lazy_entry*, %struct.lazy_entry** %12, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %148, i64 %150
  %152 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 4
  br label %165

153:                                              ; preds = %110
  %154 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %155 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %158 = call i32 @ce_namelen(%struct.cache_entry* %157)
  %159 = call i32 @memihash(i8* %156, i32 %158)
  %160 = load %struct.lazy_entry*, %struct.lazy_entry** %12, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %160, i64 %162
  %164 = getelementptr inbounds %struct.lazy_entry, %struct.lazy_entry* %163, i32 0, i32 0
  store i32 %159, i32* %164, align 8
  br label %165

165:                                              ; preds = %153, %119
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %25

168:                                              ; preds = %53, %25
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %169, %170
  ret i32 %171
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @handle_range_dir(%struct.index_state*, i32, i32, %struct.dir_entry*, %struct.strbuf*, %struct.lazy_entry*, %struct.dir_entry**) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @memihash_cont(i32, i8*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @memihash(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
