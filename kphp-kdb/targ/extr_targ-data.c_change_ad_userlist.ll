; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_change_ad_userlist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_change_ad_userlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.advert = type { i32*, i32, i32, i32, i64 }

@ADF_ON = common dso_local global i64 0, align 8
@User = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advert*, i32, i32*, i32)* @change_ad_userlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_ad_userlist(%struct.advert* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.advert*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.advert* %0, %struct.advert** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.advert*, %struct.advert** %5, align 8
  %17 = icmp ne %struct.advert* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.advert*, %struct.advert** %5, align 8
  %20 = getelementptr inbounds %struct.advert, %struct.advert* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i64, i64* @ADF_ON, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.advert*, %struct.advert** %5, align 8
  %28 = getelementptr inbounds %struct.advert, %struct.advert* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %26, %23, %18, %4
  %32 = phi i1 [ false, %23 ], [ false, %18 ], [ false, %4 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.advert*, %struct.advert** %5, align 8
  %36 = getelementptr inbounds %struct.advert, %struct.advert* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.advert*, %struct.advert** %5, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.advert*, %struct.advert** %5, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %7, align 8
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %12, align 8
  %50 = load i32, i32* %48, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %31, %134
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @User, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %15, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @activate_one_user_ad(%struct.TYPE_5__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %63, %55
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* %74, align 4
  store i32 %76, i32* %13, align 4
  br label %134

77:                                               ; preds = %51
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @User, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %82, i64 %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %15, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @deactivate_one_user_ad(%struct.TYPE_5__* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %81
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %14, align 4
  br label %133

97:                                               ; preds = %77
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %98, 2147483647
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %135

101:                                              ; preds = %97
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @User, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %15, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @activate_one_user_ad(%struct.TYPE_5__* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %115, %109, %101
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %11, align 8
  %128 = load i32, i32* %126, align 4
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %12, align 8
  %131 = load i32, i32* %129, align 4
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %93
  br label %134

134:                                              ; preds = %133, %73
  br label %51

135:                                              ; preds = %100
  %136 = load i32*, i32** %12, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = icmp eq i32* %136, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %135
  %144 = load i32*, i32** %11, align 8
  %145 = load %struct.advert*, %struct.advert** %5, align 8
  %146 = getelementptr inbounds %struct.advert, %struct.advert* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.advert*, %struct.advert** %5, align 8
  %149 = getelementptr inbounds %struct.advert, %struct.advert* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = icmp eq i32* %144, %153
  br label %155

155:                                              ; preds = %143, %135
  %156 = phi i1 [ false, %135 ], [ %154, %143 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @activate_one_user_ad(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @deactivate_one_user_ad(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
