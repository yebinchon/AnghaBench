; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_ev7.c_ev7_collect_logout_frame_subpackets.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_ev7.c_ev7_collect_logout_frame_subpackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_subpacket = type { i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ev7_lf_subpackets = type { %struct.ev7_pal_environmental_subpacket**, %struct.ev7_pal_io_subpacket*, %struct.ev7_pal_zbox_subpacket*, %struct.ev7_pal_rbox_subpacket*, %struct.ev7_pal_processor_subpacket*, %struct.ev7_pal_logout_subpacket* }
%struct.ev7_pal_environmental_subpacket = type { i32 }
%struct.ev7_pal_io_subpacket = type { i32 }
%struct.ev7_pal_zbox_subpacket = type { i32 }
%struct.ev7_pal_rbox_subpacket = type { i32 }
%struct.ev7_pal_processor_subpacket = type { i32 }
%struct.ev7_pal_logout_subpacket = type { i32 }

@EL_CLASS__HEADER = common dso_local global i64 0, align 8
@EL_TYPE__HEADER__LOGOUT_FRAME = common dso_local global i64 0, align 8
@EL_CLASS__PAL = common dso_local global i64 0, align 8
@EL_TYPE__PAL__LOGOUT_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"%s**UNEXPECTED SUBPACKET CLASS %d IN LOGOUT FRAME (packet %d\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ev7_lf_subpackets* @ev7_collect_logout_frame_subpackets(%struct.el_subpacket* %0, %struct.ev7_lf_subpackets* %1) #0 {
  %3 = alloca %struct.ev7_lf_subpackets*, align 8
  %4 = alloca %struct.el_subpacket*, align 8
  %5 = alloca %struct.ev7_lf_subpackets*, align 8
  %6 = alloca %struct.el_subpacket*, align 8
  %7 = alloca i32, align 4
  store %struct.el_subpacket* %0, %struct.el_subpacket** %4, align 8
  store %struct.ev7_lf_subpackets* %1, %struct.ev7_lf_subpackets** %5, align 8
  %8 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %9 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EL_CLASS__HEADER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %15 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EL_TYPE__HEADER__LOGOUT_FRAME, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store %struct.ev7_lf_subpackets* null, %struct.ev7_lf_subpackets** %3, align 8
  br label %152

20:                                               ; preds = %13
  %21 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %22 = ptrtoint %struct.el_subpacket* %21 to i64
  %23 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %24 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = inttoptr i64 %26 to %struct.el_subpacket*
  store %struct.el_subpacket* %27, %struct.el_subpacket** %4, align 8
  %28 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %29 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EL_CLASS__PAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %20
  %34 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %35 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EL_TYPE__PAL__LOGOUT_FRAME, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %20
  store %struct.ev7_lf_subpackets* null, %struct.ev7_lf_subpackets** %3, align 8
  br label %152

40:                                               ; preds = %33
  %41 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %42 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ev7_pal_logout_subpacket*
  %47 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %48 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %47, i32 0, i32 5
  store %struct.ev7_pal_logout_subpacket* %46, %struct.ev7_pal_logout_subpacket** %48, align 8
  %49 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %50 = ptrtoint %struct.el_subpacket* %49 to i64
  %51 = load %struct.el_subpacket*, %struct.el_subpacket** %4, align 8
  %52 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %50, %53
  %55 = inttoptr i64 %54 to %struct.el_subpacket*
  store %struct.el_subpacket* %55, %struct.el_subpacket** %6, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %140, %40
  %57 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %58 = icmp ne %struct.el_subpacket* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %62 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %61, i32 0, i32 5
  %63 = load %struct.ev7_pal_logout_subpacket*, %struct.ev7_pal_logout_subpacket** %62, align 8
  %64 = getelementptr inbounds %struct.ev7_pal_logout_subpacket, %struct.ev7_pal_logout_subpacket* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %60, %65
  br label %67

67:                                               ; preds = %59, %56
  %68 = phi i1 [ false, %56 ], [ %66, %59 ]
  br i1 %68, label %69, label %150

69:                                               ; preds = %67
  %70 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %71 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EL_CLASS__PAL, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* @err_print_prefix, align 4
  %77 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %78 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %76, i64 %79, i32 %80)
  store %struct.ev7_lf_subpackets* null, %struct.ev7_lf_subpackets** %3, align 8
  br label %152

82:                                               ; preds = %69
  %83 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %84 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  switch i64 %85, label %138 [
    i64 130, label %86
    i64 129, label %95
    i64 128, label %104
    i64 131, label %113
    i64 137, label %122
    i64 138, label %122
    i64 132, label %122
    i64 135, label %122
    i64 133, label %122
    i64 134, label %122
    i64 136, label %122
  ]

86:                                               ; preds = %82
  %87 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %88 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.ev7_pal_processor_subpacket*
  %93 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %94 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %93, i32 0, i32 4
  store %struct.ev7_pal_processor_subpacket* %92, %struct.ev7_pal_processor_subpacket** %94, align 8
  br label %139

95:                                               ; preds = %82
  %96 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %97 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.ev7_pal_rbox_subpacket*
  %102 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %103 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %102, i32 0, i32 3
  store %struct.ev7_pal_rbox_subpacket* %101, %struct.ev7_pal_rbox_subpacket** %103, align 8
  br label %139

104:                                              ; preds = %82
  %105 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %106 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.ev7_pal_zbox_subpacket*
  %111 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %112 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %111, i32 0, i32 2
  store %struct.ev7_pal_zbox_subpacket* %110, %struct.ev7_pal_zbox_subpacket** %112, align 8
  br label %139

113:                                              ; preds = %82
  %114 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %115 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.ev7_pal_io_subpacket*
  %120 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %121 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %120, i32 0, i32 1
  store %struct.ev7_pal_io_subpacket* %119, %struct.ev7_pal_io_subpacket** %121, align 8
  br label %139

122:                                              ; preds = %82, %82, %82, %82, %82, %82, %82
  %123 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %124 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.ev7_pal_environmental_subpacket*
  %129 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  %130 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %129, i32 0, i32 0
  %131 = load %struct.ev7_pal_environmental_subpacket**, %struct.ev7_pal_environmental_subpacket*** %130, align 8
  %132 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %133 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @ev7_lf_env_index(i32 %135)
  %137 = getelementptr inbounds %struct.ev7_pal_environmental_subpacket*, %struct.ev7_pal_environmental_subpacket** %131, i64 %136
  store %struct.ev7_pal_environmental_subpacket* %128, %struct.ev7_pal_environmental_subpacket** %137, align 8
  br label %139

138:                                              ; preds = %82
  store %struct.ev7_lf_subpackets* null, %struct.ev7_lf_subpackets** %3, align 8
  br label %152

139:                                              ; preds = %122, %113, %104, %95, %86
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %142 = ptrtoint %struct.el_subpacket* %141 to i64
  %143 = load %struct.el_subpacket*, %struct.el_subpacket** %6, align 8
  %144 = getelementptr inbounds %struct.el_subpacket, %struct.el_subpacket* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %142, %145
  %147 = inttoptr i64 %146 to %struct.el_subpacket*
  store %struct.el_subpacket* %147, %struct.el_subpacket** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %56

150:                                              ; preds = %67
  %151 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %5, align 8
  store %struct.ev7_lf_subpackets* %151, %struct.ev7_lf_subpackets** %3, align 8
  br label %152

152:                                              ; preds = %150, %138, %75, %39, %19
  %153 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  ret %struct.ev7_lf_subpackets* %153
}

declare dso_local i32 @printk(i8*, i32, i64, i32) #1

declare dso_local i64 @ev7_lf_env_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
