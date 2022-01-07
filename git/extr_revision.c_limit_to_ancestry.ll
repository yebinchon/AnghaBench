; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_limit_to_ancestry.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_limit_to_ancestry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }

@TMP_MARK = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*, %struct.commit_list*)* @limit_to_ancestry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limit_to_ancestry(%struct.commit_list* %0, %struct.commit_list* %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store %struct.commit_list* %1, %struct.commit_list** %4, align 8
  store %struct.commit_list* null, %struct.commit_list** %6, align 8
  %11 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %11, %struct.commit_list** %5, align 8
  br label %12

12:                                               ; preds = %20, %2
  %13 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %17 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %16, i32 0, i32 0
  %18 = load %struct.commit*, %struct.commit** %17, align 8
  %19 = call i32 @commit_list_insert(%struct.commit* %18, %struct.commit_list** %6)
  br label %20

20:                                               ; preds = %15
  %21 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %22 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %21, i32 0, i32 1
  %23 = load %struct.commit_list*, %struct.commit_list** %22, align 8
  store %struct.commit_list* %23, %struct.commit_list** %5, align 8
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %25, %struct.commit_list** %5, align 8
  br label %26

26:                                               ; preds = %38, %24
  %27 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %28 = icmp ne %struct.commit_list* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* @TMP_MARK, align 4
  %31 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %32 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %31, i32 0, i32 0
  %33 = load %struct.commit*, %struct.commit** %32, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %30
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %29
  %39 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %40 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %39, i32 0, i32 1
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %5, align 8
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %97, %42
  store i32 0, i32* %7, align 4
  %44 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %44, %struct.commit_list** %5, align 8
  br label %45

45:                                               ; preds = %92, %43
  %46 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %47 = icmp ne %struct.commit_list* %46, null
  br i1 %47, label %48, label %96

48:                                               ; preds = %45
  %49 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %50 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %49, i32 0, i32 0
  %51 = load %struct.commit*, %struct.commit** %50, align 8
  store %struct.commit* %51, %struct.commit** %8, align 8
  %52 = load %struct.commit*, %struct.commit** %8, align 8
  %53 = getelementptr inbounds %struct.commit, %struct.commit* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TMP_MARK, align 4
  %57 = load i32, i32* @UNINTERESTING, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %92

62:                                               ; preds = %48
  %63 = load %struct.commit*, %struct.commit** %8, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 1
  %65 = load %struct.commit_list*, %struct.commit_list** %64, align 8
  store %struct.commit_list* %65, %struct.commit_list** %9, align 8
  br label %66

66:                                               ; preds = %87, %62
  %67 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %68 = icmp ne %struct.commit_list* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %71 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %70, i32 0, i32 0
  %72 = load %struct.commit*, %struct.commit** %71, align 8
  %73 = getelementptr inbounds %struct.commit, %struct.commit* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TMP_MARK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %87

80:                                               ; preds = %69
  %81 = load i32, i32* @TMP_MARK, align 4
  %82 = load %struct.commit*, %struct.commit** %8, align 8
  %83 = getelementptr inbounds %struct.commit, %struct.commit* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 8
  store i32 1, i32* %7, align 4
  br label %91

87:                                               ; preds = %79
  %88 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %89 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %88, i32 0, i32 1
  %90 = load %struct.commit_list*, %struct.commit_list** %89, align 8
  store %struct.commit_list* %90, %struct.commit_list** %9, align 8
  br label %66

91:                                               ; preds = %80, %66
  br label %92

92:                                               ; preds = %91, %61
  %93 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %94 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %93, i32 0, i32 1
  %95 = load %struct.commit_list*, %struct.commit_list** %94, align 8
  store %struct.commit_list* %95, %struct.commit_list** %5, align 8
  br label %45

96:                                               ; preds = %45
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %43, label %100

100:                                              ; preds = %97
  %101 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %101, %struct.commit_list** %5, align 8
  br label %102

102:                                              ; preds = %124, %100
  %103 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %104 = icmp ne %struct.commit_list* %103, null
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %107 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %106, i32 0, i32 0
  %108 = load %struct.commit*, %struct.commit** %107, align 8
  store %struct.commit* %108, %struct.commit** %10, align 8
  %109 = load %struct.commit*, %struct.commit** %10, align 8
  %110 = getelementptr inbounds %struct.commit, %struct.commit* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TMP_MARK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %124

117:                                              ; preds = %105
  %118 = load i32, i32* @UNINTERESTING, align 4
  %119 = load %struct.commit*, %struct.commit** %10, align 8
  %120 = getelementptr inbounds %struct.commit, %struct.commit* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %116
  %125 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %126 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %125, i32 0, i32 1
  %127 = load %struct.commit_list*, %struct.commit_list** %126, align 8
  store %struct.commit_list* %127, %struct.commit_list** %5, align 8
  br label %102

128:                                              ; preds = %102
  %129 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %129, %struct.commit_list** %5, align 8
  br label %130

130:                                              ; preds = %143, %128
  %131 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %132 = icmp ne %struct.commit_list* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = load i32, i32* @TMP_MARK, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %137 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %136, i32 0, i32 0
  %138 = load %struct.commit*, %struct.commit** %137, align 8
  %139 = getelementptr inbounds %struct.commit, %struct.commit* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %135
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %133
  %144 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %145 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %144, i32 0, i32 1
  %146 = load %struct.commit_list*, %struct.commit_list** %145, align 8
  store %struct.commit_list* %146, %struct.commit_list** %5, align 8
  br label %130

147:                                              ; preds = %130
  %148 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %148, %struct.commit_list** %5, align 8
  br label %149

149:                                              ; preds = %162, %147
  %150 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %151 = icmp ne %struct.commit_list* %150, null
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load i32, i32* @TMP_MARK, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %156 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %155, i32 0, i32 0
  %157 = load %struct.commit*, %struct.commit** %156, align 8
  %158 = getelementptr inbounds %struct.commit, %struct.commit* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %154
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %152
  %163 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %164 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %163, i32 0, i32 1
  %165 = load %struct.commit_list*, %struct.commit_list** %164, align 8
  store %struct.commit_list* %165, %struct.commit_list** %5, align 8
  br label %149

166:                                              ; preds = %149
  %167 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %168 = call i32 @free_commit_list(%struct.commit_list* %167)
  ret void
}

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
