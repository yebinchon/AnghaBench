; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_note_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_note_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.pg_state = type { i32, i64, i8*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i64 }

@note_page.units = internal constant [7 x i8] c"KMGTPE\00", align 1
@pg_level = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0x%08lx-0x%08lx   \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%9lu%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64, i32, i64, i8*)* @note_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_page(%struct.pg_state* %0, i64 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.pg_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %14, %20
  store i64 %21, i64* %11, align 8
  %22 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %23 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %29 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %32 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %35 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %37 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %40 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, ...) @pt_dump_seq_printf(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %204

45:                                               ; preds = %5
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %48 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %72, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %54 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %60 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %58, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %66 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %64, %70
  br i1 %71, label %72, label %203

72:                                               ; preds = %63, %57, %51, %45
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @note_page.units, i64 0, i64 0), i8** %12, align 8
  %73 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %74 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %167

77:                                               ; preds = %72
  %78 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @note_prot_wx(%struct.pg_state* %78, i64 %79)
  %81 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %82 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %85 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i32, i8*, ...) @pt_dump_seq_printf(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %87)
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %91 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  %94 = lshr i64 %93, 10
  store i64 %94, i64* %13, align 8
  br label %95

95:                                               ; preds = %107, %77
  %96 = load i64, i64* %13, align 8
  %97 = and i64 %96, 1023
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %99, %95
  %106 = phi i1 [ false, %95 ], [ %104, %99 ]
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = load i64, i64* %13, align 8
  %109 = lshr i64 %108, 10
  store i64 %109, i64* %13, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %12, align 8
  br label %95

112:                                              ; preds = %105
  %113 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %114 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32 (i32, i8*, ...) @pt_dump_seq_printf(i32 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %116, i32 %119)
  %121 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %122 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %112
  %126 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %127 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %130 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i32, i8*, ...) @pt_dump_seq_printf(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %125, %112
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %135 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %136 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %133
  %144 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %146 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %147 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %154 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %155 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dump_prot(%struct.pg_state* %144, i64 %152, i32 %160)
  br label %162

162:                                              ; preds = %143, %133
  %163 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %164 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @pt_dump_seq_printf(i32 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %72
  %168 = load i64, i64* %7, align 8
  %169 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %170 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %169, i32 0, i32 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp uge i64 %168, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %167
  %177 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %178 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %177, i32 0, i32 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 1
  store %struct.TYPE_3__* %180, %struct.TYPE_3__** %178, align 8
  %181 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %182 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %185 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %184, i32 0, i32 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i32, i8*, ...) @pt_dump_seq_printf(i32 %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %176, %167
  %191 = load i64, i64* %7, align 8
  %192 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %193 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %192, i32 0, i32 3
  store i64 %191, i64* %193, align 8
  %194 = load i64, i64* %11, align 8
  %195 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %196 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %199 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %202 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %190, %63
  br label %204

204:                                              ; preds = %203, %26
  ret void
}

declare dso_local i32 @pt_dump_seq_printf(i32, i8*, ...) #1

declare dso_local i32 @note_prot_wx(%struct.pg_state*, i64) #1

declare dso_local i32 @dump_prot(%struct.pg_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
