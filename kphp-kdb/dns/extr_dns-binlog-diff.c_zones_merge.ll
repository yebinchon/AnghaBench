; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-binlog-diff.c_zones_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-binlog-diff.c_zones_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__* }

@last_deleted_record = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*)* @zones_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zones_merge(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** @last_deleted_record, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @zones_count(%struct.TYPE_11__* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @zones_count(%struct.TYPE_11__* %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.TYPE_11__** @alloca(i32 %20)
  store %struct.TYPE_11__** %21, %struct.TYPE_11__*** %10, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %9, align 8
  br label %23

23:                                               ; preds = %33, %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %31
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %32, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %9, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_11__** @alloca(i32 %41)
  store %struct.TYPE_11__** %42, %struct.TYPE_11__*** %11, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %9, align 8
  br label %44

44:                                               ; preds = %54, %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %52
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %53, align 8
  br label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %9, align 8
  br label %44

58:                                               ; preds = %44
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @zones_sort(%struct.TYPE_11__** %70, i32 %71)
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @zones_sort(%struct.TYPE_11__** %73, i32 %74)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %154, %66
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %155

86:                                               ; preds = %84
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %87, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %101, i64 %103
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %108, i64 %110
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @cmp_str(i32 %93, i32 %100, i32 %107, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %86
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %119, i64 %122
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = call i32 @zone_add(%struct.TYPE_11__* %124)
  br label %154

126:                                              ; preds = %86
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %130, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %135, i64 %137
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = call i32 @zone_diff(%struct.TYPE_11__* %134, %struct.TYPE_11__* %139)
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %153

145:                                              ; preds = %126
  %146 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %146, i64 %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = call i32 @zone_delete(%struct.TYPE_11__* %151)
  br label %153

153:                                              ; preds = %145, %129
  br label %154

154:                                              ; preds = %153, %118
  br label %76

155:                                              ; preds = %84
  br label %156

156:                                              ; preds = %160, %155
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %161, i64 %164
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = call i32 @zone_add(%struct.TYPE_11__* %166)
  br label %156

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %173, %168
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %174, i64 %177
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = call i32 @zone_delete(%struct.TYPE_11__* %179)
  br label %169

181:                                              ; preds = %169
  ret void
}

declare dso_local i32 @zones_count(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__** @alloca(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zones_sort(%struct.TYPE_11__**, i32) #1

declare dso_local i32 @cmp_str(i32, i32, i32, i32) #1

declare dso_local i32 @zone_add(%struct.TYPE_11__*) #1

declare dso_local i32 @zone_diff(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @zone_delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
