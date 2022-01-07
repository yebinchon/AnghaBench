; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_parse_privhead.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_parse_privhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.privhead = type { i32, i32, i64, i64, i64, i64, i32 }

@MAGIC_PRIVHEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"Cannot find PRIVHEAD structure. LDM database is corrupt. Aborting.\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Expected PRIVHEAD version 2.11 or 2.12, got %d.%d. Aborting.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PRIVHEAD version %d.%d (Windows %s).\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Vista\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"2000/XP\00", align 1
@LDM_DB_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"Database is normally %u bytes, it claims to be %llu bytes.\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"PRIVHEAD disk size doesn't match real disk size\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"PRIVHEAD contains an invalid GUID.\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Parsed PRIVHEAD successfully.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.privhead*)* @ldm_parse_privhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_privhead(i32* %0, %struct.privhead* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.privhead*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.privhead* %1, %struct.privhead** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.privhead*, %struct.privhead** %5, align 8
  %11 = icmp ne %struct.privhead* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i64, i64* @MAGIC_PRIVHEAD, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @get_unaligned_be64(i32* %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 (i8*, ...) @ldm_error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %140

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  %26 = call i8* @get_unaligned_be16(i32* %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.privhead*, %struct.privhead** %5, align 8
  %29 = getelementptr inbounds %struct.privhead, %struct.privhead* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 14
  %32 = call i8* @get_unaligned_be16(i32* %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.privhead*, %struct.privhead** %5, align 8
  %35 = getelementptr inbounds %struct.privhead, %struct.privhead* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 283
  %38 = call i64 @get_unaligned_be64(i32* %37)
  %39 = load %struct.privhead*, %struct.privhead** %5, align 8
  %40 = getelementptr inbounds %struct.privhead, %struct.privhead* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 291
  %43 = call i64 @get_unaligned_be64(i32* %42)
  %44 = load %struct.privhead*, %struct.privhead** %5, align 8
  %45 = getelementptr inbounds %struct.privhead, %struct.privhead* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 299
  %48 = call i64 @get_unaligned_be64(i32* %47)
  %49 = load %struct.privhead*, %struct.privhead** %5, align 8
  %50 = getelementptr inbounds %struct.privhead, %struct.privhead* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 307
  %53 = call i64 @get_unaligned_be64(i32* %52)
  %54 = load %struct.privhead*, %struct.privhead** %5, align 8
  %55 = getelementptr inbounds %struct.privhead, %struct.privhead* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  %56 = load %struct.privhead*, %struct.privhead** %5, align 8
  %57 = getelementptr inbounds %struct.privhead, %struct.privhead* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %23
  %61 = load %struct.privhead*, %struct.privhead** %5, align 8
  %62 = getelementptr inbounds %struct.privhead, %struct.privhead* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %60, %23
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  %70 = load %struct.privhead*, %struct.privhead** %5, align 8
  %71 = getelementptr inbounds %struct.privhead, %struct.privhead* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.privhead*, %struct.privhead** %5, align 8
  %76 = getelementptr inbounds %struct.privhead, %struct.privhead* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 11
  br i1 %78, label %79, label %87

79:                                               ; preds = %74, %69
  %80 = load %struct.privhead*, %struct.privhead** %5, align 8
  %81 = getelementptr inbounds %struct.privhead, %struct.privhead* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.privhead*, %struct.privhead** %5, align 8
  %84 = getelementptr inbounds %struct.privhead, %struct.privhead* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @ldm_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  store i32 0, i32* %3, align 4
  br label %140

87:                                               ; preds = %74, %66
  %88 = load %struct.privhead*, %struct.privhead** %5, align 8
  %89 = getelementptr inbounds %struct.privhead, %struct.privhead* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.privhead*, %struct.privhead** %5, align 8
  %92 = getelementptr inbounds %struct.privhead, %struct.privhead* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 (i8*, ...) @ldm_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93, i8* %97)
  %99 = load %struct.privhead*, %struct.privhead** %5, align 8
  %100 = getelementptr inbounds %struct.privhead, %struct.privhead* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LDM_DB_SIZE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %87
  %105 = load i64, i64* @LDM_DB_SIZE, align 8
  %106 = load %struct.privhead*, %struct.privhead** %5, align 8
  %107 = getelementptr inbounds %struct.privhead, %struct.privhead* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @ldm_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %105, i64 %108)
  br label %110

110:                                              ; preds = %104, %87
  %111 = load %struct.privhead*, %struct.privhead** %5, align 8
  %112 = getelementptr inbounds %struct.privhead, %struct.privhead* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load %struct.privhead*, %struct.privhead** %5, align 8
  %117 = getelementptr inbounds %struct.privhead, %struct.privhead* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.privhead*, %struct.privhead** %5, align 8
  %120 = getelementptr inbounds %struct.privhead, %struct.privhead* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.privhead*, %struct.privhead** %5, align 8
  %124 = getelementptr inbounds %struct.privhead, %struct.privhead* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %115, %110
  %128 = call i32 (i8*, ...) @ldm_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %140

129:                                              ; preds = %115
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 48
  %132 = load %struct.privhead*, %struct.privhead** %5, align 8
  %133 = getelementptr inbounds %struct.privhead, %struct.privhead* %132, i32 0, i32 6
  %134 = call i64 @uuid_parse(i32* %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call i32 (i8*, ...) @ldm_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %140

138:                                              ; preds = %129
  %139 = call i32 (i8*, ...) @ldm_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %136, %127, %79, %21
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i32 @ldm_error(i8*, ...) #1

declare dso_local i8* @get_unaligned_be16(i32*) #1

declare dso_local i32 @ldm_debug(i8*, ...) #1

declare dso_local i32 @ldm_info(i8*, i64, i64) #1

declare dso_local i64 @uuid_parse(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
