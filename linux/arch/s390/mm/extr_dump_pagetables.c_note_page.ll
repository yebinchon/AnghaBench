; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_note_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_note_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.seq_file = type { i32 }
%struct.pg_state = type { i32, i32, i64, i32, %struct.TYPE_2__* }

@note_page.units = internal constant [7 x i8] c"KMGTPE\00", align 1
@address_markers = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0x%0*lx-0x%0*lx \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%9lu%c \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i32, i32)* @note_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_page(%struct.seq_file* %0, %struct.pg_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pg_state* %1, %struct.pg_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 16, i32* %9, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @note_page.units, i64 0, i64 0), i8** %10, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %16 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %12, align 4
  %18 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %19 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %25 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %28 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %30 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %31 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %30, i32 0, i32 4
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %33 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %34 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %150

39:                                               ; preds = %4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %46 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %51 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %54 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %52, %58
  br i1 %59, label %60, label %149

60:                                               ; preds = %49, %43, %39
  %61 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %64 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %68 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %66, i64 %69)
  %71 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %72 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %75 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %73, %77
  %79 = ashr i64 %78, 10
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %92, %60
  %81 = load i64, i64* %13, align 8
  %82 = and i64 %81, 1023
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i1 [ false, %80 ], [ %89, %84 ]
  br i1 %91, label %92, label %97

92:                                               ; preds = %90
  %93 = load i64, i64* %13, align 8
  %94 = lshr i64 %93, 10
  store i64 %94, i64* %13, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %10, align 8
  br label %80

97:                                               ; preds = %90
  %98 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %99 = load i64, i64* %13, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i8*, i8** %10, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %106 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %107 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %110 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @print_prot(%struct.seq_file* %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %124, %97
  %114 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %115 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %118 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %116, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %113
  %125 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %126 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 1
  store %struct.TYPE_2__* %128, %struct.TYPE_2__** %126, align 8
  %129 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %130 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %131 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %113

136:                                              ; preds = %113
  %137 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %138 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %142 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %145 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %148 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %136, %49
  br label %150

150:                                              ; preds = %149, %22
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @print_prot(%struct.seq_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
