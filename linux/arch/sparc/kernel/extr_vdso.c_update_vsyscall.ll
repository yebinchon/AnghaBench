; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vdso.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vdso.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vvar_data = type { i32, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.timekeeper = type { %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@vvar_data = common dso_local global %struct.vvar_data* null, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  %3 = alloca %struct.vvar_data*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %4 = load %struct.vvar_data*, %struct.vvar_data** @vvar_data, align 8
  store %struct.vvar_data* %4, %struct.vvar_data** %3, align 8
  %5 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %6 = icmp eq %struct.vvar_data* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %174

11:                                               ; preds = %1
  %12 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %13 = call i32 @vvar_write_begin(%struct.vvar_data* %12)
  %14 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %22 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %24 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %28 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %31 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %35 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %38 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %42 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %45 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %49 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %52 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %55 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %54, i32 0, i32 7
  store i64 %53, i64* %55, align 8
  %56 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %57 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %61 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %63 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %66 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %64, %68
  %70 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %71 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %70, i32 0, i32 6
  store i64 %69, i64* %71, align 8
  %72 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %73 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %77 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %81 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %79, %83
  %85 = add nsw i32 %75, %84
  %86 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %87 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %100, %11
  %89 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %90 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @NSEC_PER_SEC, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %95 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %93, %97
  %99 = icmp sge i32 %91, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %88
  %101 = load i64, i64* @NSEC_PER_SEC, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %104 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %102, %106
  %108 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %109 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %113 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %88

116:                                              ; preds = %88
  %117 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %118 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %121 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %123 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %127 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = ashr i32 %125, %129
  %131 = sext i32 %130 to i64
  %132 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %133 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %135 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %138 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %136, %140
  %142 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %143 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %145 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %148 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %146, %151
  %153 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %154 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %161, %116
  %156 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %157 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NSEC_PER_SEC, align 8
  %160 = icmp sge i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i64, i64* @NSEC_PER_SEC, align 8
  %163 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %164 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %168 = getelementptr inbounds %struct.vvar_data, %struct.vvar_data* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %155

171:                                              ; preds = %155
  %172 = load %struct.vvar_data*, %struct.vvar_data** %3, align 8
  %173 = call i32 @vvar_write_end(%struct.vvar_data* %172)
  br label %174

174:                                              ; preds = %171, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vvar_write_begin(%struct.vvar_data*) #1

declare dso_local i32 @vvar_write_end(%struct.vvar_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
