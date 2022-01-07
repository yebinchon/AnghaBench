; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_merge_end_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-friends-extension.c_friends_merge_end_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.gather_entry = type { i32, i32* }
%struct.friends_gather_extra = type { i32, i32, i32 }

@resultlist = common dso_local global i32* null, align 8
@MAX_USERLIST_NUM = common dso_local global i32 0, align 4
@compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @friends_merge_end_query(%struct.connection* %0, i8* %1, i32 %2, i8* %3, %struct.gather_entry* %4, i32 %5) #0 {
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gather_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.friends_gather_extra*, align 8
  %16 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.gather_entry* %4, %struct.gather_entry** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.friends_gather_extra*
  store %struct.friends_gather_extra* %18, %struct.friends_gather_extra** %15, align 8
  %19 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %20 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %100

23:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %27 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32*, i32** @resultlist, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %14, align 4
  br label %24

38:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %84, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %51 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 4, %52
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %59 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @resultlist, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %72
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %56

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %43
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %39

87:                                               ; preds = %39
  %88 = load %struct.connection*, %struct.connection** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %92 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 0, %93
  %95 = load i32*, i32** @resultlist, align 8
  %96 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %97 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @return_one_key_list(%struct.connection* %88, i8* %89, i32 %90, i32 2147483647, i32 %94, i32* %95, i32 %98)
  br label %179

100:                                              ; preds = %6
  %101 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %102 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %176

105:                                              ; preds = %100
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %157, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %160

110:                                              ; preds = %106
  %111 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %111, i64 %113
  %115 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 4
  br i1 %117, label %118, label %156

118:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %152, %118
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %121, i64 %123
  %125 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %120, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %119
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @MAX_USERLIST_NUM, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %130
  %135 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %135, i64 %137
  %139 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @resultlist, align 8
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %134, %130
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %119

155:                                              ; preds = %119
  br label %156

156:                                              ; preds = %155, %110
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %106

160:                                              ; preds = %106
  %161 = load i32*, i32** @resultlist, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @compare, align 4
  %164 = call i32 @qsort(i32* %161, i32 %162, i32 4, i32 %163)
  %165 = load %struct.connection*, %struct.connection** %7, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.friends_gather_extra*, %struct.friends_gather_extra** %15, align 8
  %170 = getelementptr inbounds %struct.friends_gather_extra, %struct.friends_gather_extra* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 0, %171
  %173 = load i32*, i32** @resultlist, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @return_one_key_list(%struct.connection* %165, i8* %166, i32 %167, i32 %168, i32 %172, i32* %173, i32 %174)
  br label %178

176:                                              ; preds = %100
  %177 = call i32 @assert(i32 0)
  br label %178

178:                                              ; preds = %176, %160
  br label %179

179:                                              ; preds = %178, %87
  ret i32 1
}

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
