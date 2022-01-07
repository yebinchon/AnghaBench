; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec_file.c_setup_dtb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_machine_kexec_file.c_setup_dtb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@FDT_PROP_BOOTARGS = common dso_local global i32 0, align 4
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@FDT_PROP_INITRD_START = common dso_local global i32 0, align 4
@FDT_PROP_INITRD_END = common dso_local global i32 0, align 4
@FDT_PROP_KASLR_SEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"RNG is not initialised: omitting \22%s\22 property\0A\00", align 1
@RNG_SEED_SIZE = common dso_local global i32 0, align 4
@FDT_PROP_RNG_SEED = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i64, i64, i8*, i8*)* @setup_dtb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dtb(%struct.kimage* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kimage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @fdt_path_offset(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %161

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @FDT_PROP_BOOTARGS, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @fdt_setprop_string(i8* %28, i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %161

36:                                               ; preds = %27
  br label %51

37:                                               ; preds = %23
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @FDT_PROP_BOOTARGS, align 4
  %41 = call i32 @fdt_delprop(i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %161

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @FDT_PROP_INITRD_START, align 4
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @fdt_setprop_u64(i8* %55, i32 %56, i32 %57, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %161

63:                                               ; preds = %54
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @FDT_PROP_INITRD_END, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @fdt_setprop_u64(i8* %64, i32 %65, i32 %66, i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %161

74:                                               ; preds = %63
  br label %102

75:                                               ; preds = %51
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @FDT_PROP_INITRD_START, align 4
  %79 = call i32 @fdt_delprop(i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %161

88:                                               ; preds = %82, %75
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @FDT_PROP_INITRD_END, align 4
  %92 = call i32 @fdt_delprop(i8* %89, i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %161

101:                                              ; preds = %95, %88
  br label %102

102:                                              ; preds = %101, %74
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @FDT_PROP_KASLR_SEED, align 4
  %106 = call i32 @fdt_delprop(i8* %103, i32 %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 0, i32* %13, align 4
  br label %117

112:                                              ; preds = %102
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %161

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116, %111
  %118 = call i64 (...) @rng_is_initialized()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = call i64 (...) @get_random_u64()
  store i64 %121, i64* %14, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @FDT_PROP_KASLR_SEED, align 4
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @fdt_setprop_u64(i8* %122, i32 %123, i32 %124, i64 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %161

130:                                              ; preds = %120
  br label %134

131:                                              ; preds = %117
  %132 = load i32, i32* @FDT_PROP_KASLR_SEED, align 4
  %133 = call i32 @pr_notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %130
  %135 = call i64 (...) @rng_is_initialized()
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = load i32, i32* @RNG_SEED_SIZE, align 4
  %139 = zext i32 %138 to i64
  %140 = call i8* @llvm.stacksave()
  store i8* %140, i8** %15, align 8
  %141 = alloca i32, i64 %139, align 16
  store i64 %139, i64* %16, align 8
  %142 = load i32, i32* @RNG_SEED_SIZE, align 4
  %143 = call i32 @get_random_bytes(i32* %141, i32 %142)
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @FDT_PROP_RNG_SEED, align 4
  %147 = load i32, i32* @RNG_SEED_SIZE, align 4
  %148 = call i32 @fdt_setprop(i8* %144, i32 %145, i32 %146, i32* %141, i32 %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  store i32 2, i32* %17, align 4
  br label %153

152:                                              ; preds = %137
  store i32 0, i32* %17, align 4
  br label %153

153:                                              ; preds = %151, %152
  %154 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %17, align 4
  switch i32 %155, label %180 [
    i32 0, label %156
    i32 2, label %161
  ]

156:                                              ; preds = %153
  br label %160

157:                                              ; preds = %134
  %158 = load i32, i32* @FDT_PROP_RNG_SEED, align 4
  %159 = call i32 @pr_notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %157, %156
  br label %161

161:                                              ; preds = %160, %153, %129, %115, %100, %87, %73, %62, %49, %35, %22
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  br label %175

172:                                              ; preds = %164
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi i32 [ %171, %169 ], [ %174, %172 ]
  store i32 %176, i32* %6, align 4
  br label %178

177:                                              ; preds = %161
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %175
  %179 = load i32, i32* %6, align 4
  ret i32 %179

180:                                              ; preds = %153
  unreachable
}

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @fdt_setprop_string(i8*, i32, i32, i8*) #1

declare dso_local i32 @fdt_delprop(i8*, i32, i32) #1

declare dso_local i32 @fdt_setprop_u64(i8*, i32, i32, i64) #1

declare dso_local i64 @rng_is_initialized(...) #1

declare dso_local i64 @get_random_u64(...) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @fdt_setprop(i8*, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
