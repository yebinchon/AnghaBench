; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_report.c_read_ipl_report.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_ipl_report.c_read_ipl_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ipl_rb_certificates = type { i32 }
%struct.ipl_rb_components = type { i32 }
%struct.ipl_pl_hdr = type { i64 }
%struct.ipl_rl_hdr = type { i32 }
%struct.ipl_rb_hdr = type { i32, i32 }

@ipl_block_valid = common dso_local global i32 0, align 4
@ipl_block = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IPL_PL_FLAG_IPLSR = common dso_local global i32 0, align 4
@IPL_PL_FLAG_SIPL = common dso_local global i32 0, align 4
@ipl_secure_flag = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_ipl_report(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipl_rb_certificates*, align 8
  %5 = alloca %struct.ipl_rb_components*, align 8
  %6 = alloca %struct.ipl_pl_hdr*, align 8
  %7 = alloca %struct.ipl_rl_hdr*, align 8
  %8 = alloca %struct.ipl_rb_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i32, i32* @ipl_block_valid, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ipl_block, i32 0, i32 0, i32 0), align 4
  %15 = load i32, i32* @IPL_PL_FLAG_IPLSR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %1
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %2, align 8
  br label %107

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ipl_block, i32 0, i32 0, i32 0), align 4
  %22 = load i32, i32* @IPL_PL_FLAG_SIPL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @ipl_secure_flag, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @S390_lowcore, i32 0, i32 0), align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to %struct.ipl_pl_hdr*
  store %struct.ipl_pl_hdr* %30, %struct.ipl_pl_hdr** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ipl_pl_hdr*, %struct.ipl_pl_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.ipl_pl_hdr, %struct.ipl_pl_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = add i64 %35, 7
  %37 = and i64 %36, -8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = inttoptr i64 %38 to %struct.ipl_rl_hdr*
  store %struct.ipl_rl_hdr* %39, %struct.ipl_rl_hdr** %7, align 8
  store %struct.ipl_rb_certificates* null, %struct.ipl_rb_certificates** %4, align 8
  store %struct.ipl_rb_components* null, %struct.ipl_rb_components** %5, align 8
  %40 = load %struct.ipl_rl_hdr*, %struct.ipl_rl_hdr** %7, align 8
  %41 = bitcast %struct.ipl_rl_hdr* %40 to i8*
  %42 = load %struct.ipl_rl_hdr*, %struct.ipl_rl_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ipl_rl_hdr, %struct.ipl_rl_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %41, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load %struct.ipl_rl_hdr*, %struct.ipl_rl_hdr** %7, align 8
  %48 = bitcast %struct.ipl_rl_hdr* %47 to i8*
  %49 = getelementptr i8, i8* %48, i64 4
  %50 = bitcast i8* %49 to %struct.ipl_rb_hdr*
  store %struct.ipl_rb_hdr* %50, %struct.ipl_rb_hdr** %8, align 8
  br label %51

51:                                               ; preds = %80, %20
  %52 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %53 = bitcast %struct.ipl_rb_hdr* %52 to i8*
  %54 = getelementptr i8, i8* %53, i64 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %59 = bitcast %struct.ipl_rb_hdr* %58 to i8*
  %60 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %61 = getelementptr inbounds %struct.ipl_rb_hdr, %struct.ipl_rb_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %59, i64 %63
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ule i8* %64, %65
  br label %67

67:                                               ; preds = %57, %51
  %68 = phi i1 [ false, %51 ], [ %66, %57 ]
  br i1 %68, label %69, label %89

69:                                               ; preds = %67
  %70 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %71 = getelementptr inbounds %struct.ipl_rb_hdr, %struct.ipl_rb_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %79 [
    i32 129, label %73
    i32 128, label %76
  ]

73:                                               ; preds = %69
  %74 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %75 = bitcast %struct.ipl_rb_hdr* %74 to %struct.ipl_rb_certificates*
  store %struct.ipl_rb_certificates* %75, %struct.ipl_rb_certificates** %4, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %78 = bitcast %struct.ipl_rb_hdr* %77 to %struct.ipl_rb_components*
  store %struct.ipl_rb_components* %78, %struct.ipl_rb_components** %5, align 8
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %76, %73
  %81 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %82 = bitcast %struct.ipl_rb_hdr* %81 to i8*
  %83 = load %struct.ipl_rb_hdr*, %struct.ipl_rb_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.ipl_rb_hdr, %struct.ipl_rb_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %82, i64 %86
  %88 = bitcast i8* %87 to %struct.ipl_rb_hdr*
  store %struct.ipl_rb_hdr* %88, %struct.ipl_rb_hdr** %8, align 8
  br label %51

89:                                               ; preds = %67
  %90 = load %struct.ipl_rb_components*, %struct.ipl_rb_components** %5, align 8
  %91 = icmp ne %struct.ipl_rb_components* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.ipl_rb_certificates*, %struct.ipl_rb_certificates** %4, align 8
  %94 = icmp ne %struct.ipl_rb_certificates* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92, %89
  %96 = load i64, i64* %3, align 8
  store i64 %96, i64* %2, align 8
  br label %107

97:                                               ; preds = %92
  %98 = load %struct.ipl_rb_components*, %struct.ipl_rb_components** %5, align 8
  %99 = load %struct.ipl_rb_certificates*, %struct.ipl_rb_certificates** %4, align 8
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @find_bootdata_space(%struct.ipl_rb_components* %98, %struct.ipl_rb_certificates* %99, i64 %100)
  store i64 %101, i64* %3, align 8
  %102 = load %struct.ipl_rb_components*, %struct.ipl_rb_components** %5, align 8
  %103 = call i32 @copy_components_bootdata(%struct.ipl_rb_components* %102)
  %104 = load %struct.ipl_rb_certificates*, %struct.ipl_rb_certificates** %4, align 8
  %105 = call i32 @copy_certificates_bootdata(%struct.ipl_rb_certificates* %104)
  %106 = load i64, i64* %3, align 8
  store i64 %106, i64* %2, align 8
  br label %107

107:                                              ; preds = %97, %95, %18
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

declare dso_local i64 @find_bootdata_space(%struct.ipl_rb_components*, %struct.ipl_rb_certificates*, i64) #1

declare dso_local i32 @copy_components_bootdata(%struct.ipl_rb_components*) #1

declare dso_local i32 @copy_certificates_bootdata(%struct.ipl_rb_certificates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
