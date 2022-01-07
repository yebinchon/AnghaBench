; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_tree_content_remove.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_tree_content_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_entry = type { %struct.TYPE_4__*, %struct.tree_content*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.tree_content = type { i32, %struct.tree_entry** }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_entry*, i8*, %struct.tree_entry*, i32)* @tree_content_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_content_remove(%struct.tree_entry* %0, i8* %1, %struct.tree_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tree_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tree_content*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tree_entry*, align 8
  store %struct.tree_entry* %0, %struct.tree_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tree_entry* %2, %struct.tree_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchrnul(i8* %15, i8 signext 47)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %24 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %23, i32 0, i32 1
  %25 = load %struct.tree_content*, %struct.tree_content** %24, align 8
  %26 = icmp ne %struct.tree_content* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %29 = call i32 @load_tree(%struct.tree_entry* %28)
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  store %struct.tree_entry* %38, %struct.tree_entry** %14, align 8
  br label %161

39:                                               ; preds = %34, %30
  %40 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %41 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %40, i32 0, i32 1
  %42 = load %struct.tree_content*, %struct.tree_content** %41, align 8
  store %struct.tree_content* %42, %struct.tree_content** %10, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %157, %39
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.tree_content*, %struct.tree_content** %10, align 8
  %46 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %160

49:                                               ; preds = %43
  %50 = load %struct.tree_content*, %struct.tree_content** %10, align 8
  %51 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %50, i32 0, i32 1
  %52 = load %struct.tree_entry**, %struct.tree_entry*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %52, i64 %54
  %56 = load %struct.tree_entry*, %struct.tree_entry** %55, align 8
  store %struct.tree_entry* %56, %struct.tree_entry** %14, align 8
  %57 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %58 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %49
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %67 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @fspathncmp(i8* %65, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %156, label %74

74:                                               ; preds = %64
  %75 = load i8*, i8** %11, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %81 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @S_ISDIR(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %199

89:                                               ; preds = %79, %74
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %95 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @S_ISDIR(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93, %89
  br label %161

103:                                              ; preds = %93
  %104 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %105 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %104, i32 0, i32 1
  %106 = load %struct.tree_content*, %struct.tree_content** %105, align 8
  %107 = icmp ne %struct.tree_content* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %110 = call i32 @load_tree(%struct.tree_entry* %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %116 = call i32 @tree_content_remove(%struct.tree_entry* %112, i8* %114, %struct.tree_entry* %115, i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %111
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %151, %118
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %122 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %121, i32 0, i32 1
  %123 = load %struct.tree_content*, %struct.tree_content** %122, align 8
  %124 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ult i32 %120, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %119
  %128 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %129 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %128, i32 0, i32 1
  %130 = load %struct.tree_content*, %struct.tree_content** %129, align 8
  %131 = getelementptr inbounds %struct.tree_content, %struct.tree_content* %130, i32 0, i32 1
  %132 = load %struct.tree_entry**, %struct.tree_entry*** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.tree_entry*, %struct.tree_entry** %132, i64 %134
  %136 = load %struct.tree_entry*, %struct.tree_entry** %135, align 8
  %137 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %127
  %144 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %145 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i32 @oidclr(i32* %148)
  store i32 1, i32* %5, align 4
  br label %199

150:                                              ; preds = %127
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %119

154:                                              ; preds = %119
  store %struct.tree_entry* null, %struct.tree_entry** %8, align 8
  br label %161

155:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %199

156:                                              ; preds = %64, %49
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %43

160:                                              ; preds = %43
  store i32 0, i32* %5, align 4
  br label %199

161:                                              ; preds = %154, %102, %37
  %162 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %163 = icmp ne %struct.tree_entry* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  %166 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %167 = call i32 @memcpy(%struct.tree_entry* %165, %struct.tree_entry* %166, i32 24)
  br label %179

168:                                              ; preds = %161
  %169 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %170 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %169, i32 0, i32 1
  %171 = load %struct.tree_content*, %struct.tree_content** %170, align 8
  %172 = icmp ne %struct.tree_content* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %175 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %174, i32 0, i32 1
  %176 = load %struct.tree_content*, %struct.tree_content** %175, align 8
  %177 = call i32 @release_tree_content_recursive(%struct.tree_content* %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %164
  %180 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %181 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %180, i32 0, i32 1
  store %struct.tree_content* null, %struct.tree_content** %181, align 8
  %182 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %183 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %182, i32 0, i32 0
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load %struct.tree_entry*, %struct.tree_entry** %14, align 8
  %188 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = call i32 @oidclr(i32* %191)
  %193 = load %struct.tree_entry*, %struct.tree_entry** %6, align 8
  %194 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = call i32 @oidclr(i32* %197)
  store i32 1, i32* %5, align 4
  br label %199

199:                                              ; preds = %179, %160, %155, %143, %88
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @load_tree(%struct.tree_entry*) #1

declare dso_local i32 @fspathncmp(i8*, i32, i32) #1

declare dso_local i32 @S_ISDIR(i64) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i32 @memcpy(%struct.tree_entry*, %struct.tree_entry*, i32) #1

declare dso_local i32 @release_tree_content_recursive(%struct.tree_content*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
