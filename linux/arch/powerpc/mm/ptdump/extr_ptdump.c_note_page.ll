; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_note_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_note_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.pg_state = type { i32, i64, i64, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@pg_level = common dso_local global %struct.TYPE_4__* null, align 8
@PTE_RPN_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64, i32, i64)* @note_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_page(%struct.pg_state* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.pg_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %11, %17
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PTE_RPN_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %23 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %29 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %32 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %35 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %38 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %41 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %43 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %46 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %45, i32 0, i32 5
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pt_dump_seq_printf(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %187

51:                                               ; preds = %4
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %54 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %94, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %60 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %94, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %66 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %65, i32 0, i32 5
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %64, %70
  br i1 %71, label %94, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %75 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp ne i64 %73, %78
  br i1 %79, label %80, label %182

80:                                               ; preds = %72
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %83 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %80
  %87 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %88 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %91 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %182

94:                                               ; preds = %86, %80, %63, %57, %51
  %95 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %96 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %142

99:                                               ; preds = %94
  %100 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @note_prot_wx(%struct.pg_state* %100, i64 %101)
  %103 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @dump_addr(%struct.pg_state* %103, i64 %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %107 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %108 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %99
  %116 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %118 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %119 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %126 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pg_level, align 8
  %129 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %130 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dump_flag_info(%struct.pg_state* %116, i64 %124, i64 %127, i32 %135)
  br label %137

137:                                              ; preds = %115, %99
  %138 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %139 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @pt_dump_seq_putc(i32 %140, i8 signext 10)
  br label %142

142:                                              ; preds = %137, %94
  br label %143

143:                                              ; preds = %152, %142
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %146 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %145, i32 0, i32 5
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp uge i64 %144, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %143
  %153 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %154 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %153, i32 0, i32 5
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 1
  store %struct.TYPE_3__* %156, %struct.TYPE_3__** %154, align 8
  %157 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %158 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %161 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %160, i32 0, i32 5
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @pt_dump_seq_printf(i32 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %164)
  br label %143

166:                                              ; preds = %143
  %167 = load i64, i64* %6, align 8
  %168 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %169 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %10, align 8
  %171 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %172 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %175 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %174, i32 0, i32 4
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %178 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %181 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %186

182:                                              ; preds = %86, %72
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.pg_state*, %struct.pg_state** %5, align 8
  %185 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %166
  br label %187

187:                                              ; preds = %186, %26
  ret void
}

declare dso_local i32 @pt_dump_seq_printf(i32, i8*, i32) #1

declare dso_local i32 @note_prot_wx(%struct.pg_state*, i64) #1

declare dso_local i32 @dump_addr(%struct.pg_state*, i64) #1

declare dso_local i32 @dump_flag_info(%struct.pg_state*, i64, i64, i32) #1

declare dso_local i32 @pt_dump_seq_putc(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
