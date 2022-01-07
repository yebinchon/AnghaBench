; ModuleID = '/home/carl/AnghaBench/git/extr_pack-revindex.c_create_pack_revindex.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-revindex.c_create_pack_revindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.packed_git = type { i32, i8*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_git*)* @create_pack_revindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_pack_revindex(%struct.packed_git* %0) #0 {
  %2 = alloca %struct.packed_git*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %2, align 8
  %11 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %12 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %15 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  %25 = call i32 @ALLOC_ARRAY(%struct.TYPE_5__* %22, i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1024
  store i8* %27, i8** %5, align 8
  %28 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %29 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %97

32:                                               ; preds = %1
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %36 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 4
  %40 = mul i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %34, i64 %41
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %46 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32* %49, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %93, %32
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i8* @ntohl(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, -2147483648
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %66 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  br label %84

72:                                               ; preds = %54
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @get_be64(i32* %73)
  %75 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %76 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %75, i32 0, i32 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32* %83, i32** %8, align 8
  br label %84

84:                                               ; preds = %72, %63
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %87 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %50

96:                                               ; preds = %50
  br label %134

97:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %130, %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, 4
  %106 = load i32, i32* %4, align 4
  %107 = mul i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i8* @ntohl(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %116 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %115, i32 0, i32 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %124 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %123, i32 0, i32 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %122, i32* %129, align 4
  br label %130

130:                                              ; preds = %102
  %131 = load i32, i32* %4, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %98

133:                                              ; preds = %98
  br label %134

134:                                              ; preds = %133, %96
  %135 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %136 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub i32 %137, %138
  %140 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %141 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %140, i32 0, i32 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 4
  %147 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %148 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %147, i32 0, i32 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 -1, i32* %153, align 4
  %154 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %155 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %154, i32 0, i32 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %159 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sort_revindex(%struct.TYPE_5__* %156, i32 %157, i32 %160)
  ret void
}

declare dso_local i32 @ALLOC_ARRAY(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @get_be64(i32*) #1

declare dso_local i32 @sort_revindex(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
