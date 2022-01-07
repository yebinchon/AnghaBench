; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_note_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_dump.c_note_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.pg_state = type { i32, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@note_page.units = internal constant [7 x i8] c"KMGTPE\00", align 1
@pg_level = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"0x%016lx-0x%016lx   \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%9lu%c %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64, i32, i64)* @note_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_page(%struct.pg_state* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.pg_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %12, %18
  store i64 %19, i64* %9, align 8
  %20 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %21 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %27 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %30 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %33 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %35 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %38 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = call i32 (i32, i8*, i64, ...) @pt_dump_seq_printf(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %193

44:                                               ; preds = %4
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %47 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %53 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %59 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %57, %63
  br i1 %64, label %65, label %192

65:                                               ; preds = %56, %50, %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @note_page.units, i64 0, i64 0), i8** %10, align 8
  %66 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %67 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %158

70:                                               ; preds = %65
  %71 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @note_prot_uxn(%struct.pg_state* %71, i64 %72)
  %74 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @note_prot_wx(%struct.pg_state* %74, i64 %75)
  %77 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %78 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %81 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 (i32, i8*, i64, ...) @pt_dump_seq_printf(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %87 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %85, %88
  %90 = lshr i64 %89, 10
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %103, %70
  %92 = load i64, i64* %11, align 8
  %93 = and i64 %92, 1023
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %95, %91
  %102 = phi i1 [ false, %91 ], [ %100, %95 ]
  br i1 %102, label %103, label %108

103:                                              ; preds = %101
  %104 = load i64, i64* %11, align 8
  %105 = lshr i64 %104, 10
  store i64 %105, i64* %11, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  br label %91

108:                                              ; preds = %101
  %109 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %110 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %117 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %118 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, i64, ...) @pt_dump_seq_printf(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %112, i32 %115, i32 %123)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %126 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %127 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %108
  %135 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %137 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %138 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %145 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %146 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dump_prot(%struct.pg_state* %135, i64 %143, i32 %151)
  br label %153

153:                                              ; preds = %134, %108
  %154 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %155 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @pt_dump_seq_puts(i32 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %153, %65
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %161 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %160, i32 0, i32 3
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp uge i64 %159, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %158
  %168 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %169 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %168, i32 0, i32 3
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 1
  store %struct.TYPE_3__* %171, %struct.TYPE_3__** %169, align 8
  %172 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %173 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %176 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %175, i32 0, i32 3
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = call i32 (i32, i8*, i64, ...) @pt_dump_seq_printf(i32 %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %180)
  br label %182

182:                                              ; preds = %167, %158
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %185 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %188 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %191 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %182, %56
  br label %193

193:                                              ; preds = %192, %24
  %194 = load i64, i64* %6, align 8
  %195 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %196 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %195, i32 0, i32 3
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp uge i64 %194, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %193
  %203 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %204 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %203, i32 0, i32 3
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 1
  store %struct.TYPE_3__* %206, %struct.TYPE_3__** %204, align 8
  %207 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %208 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %211 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %210, i32 0, i32 3
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = call i32 (i32, i8*, i64, ...) @pt_dump_seq_printf(i32 %209, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %215)
  br label %217

217:                                              ; preds = %202, %193
  ret void
}

declare dso_local i32 @pt_dump_seq_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @note_prot_uxn(%struct.pg_state*, i64) #1

declare dso_local i32 @note_prot_wx(%struct.pg_state*, i64) #1

declare dso_local i32 @dump_prot(%struct.pg_state*, i64, i32) #1

declare dso_local i32 @pt_dump_seq_puts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
