; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_diag.c___diag_page_ref_service.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_diag.c___diag_page_ref_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.prs_parm = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.prs_parm.0 = type opaque

@.str = private unnamed_addr constant [46 x i8] c"diag page reference parameter block at 0x%llx\00", align 1
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"pageref token addr 0x%llx select mask 0x%llx compare mask 0x%llx\00", align 1
@KVM_S390_PFAULT_TOKEN_INVALID = common dso_local global i32 0, align 4
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"pageref cancel addr 0x%llx\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @__diag_page_ref_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__diag_page_ref_service(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.prs_parm, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 240
  %15 = ashr i32 %14, 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.kvm_vcpu*, i32, i8*, i32, ...) @VCPU_EVENT(%struct.kvm_vcpu* %25, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 7
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %1
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = load i32, i32* @PGM_SPECIFICATION, align 4
  %57 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %55, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %244

58:                                               ; preds = %1
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %6, align 8
  %71 = bitcast %struct.prs_parm* %4 to %struct.prs_parm.0*
  %72 = call i32 @read_guest(%struct.kvm_vcpu* %59, i32 %69, i64 %70, %struct.prs_parm.0* %71, i32 48)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %58
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %76, i32 %77)
  store i32 %78, i32* %2, align 4
  br label %244

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 2
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %85, 5
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 600
  br i1 %90, label %91, label %95

91:                                               ; preds = %87, %83, %79
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = load i32, i32* @PGM_SPECIFICATION, align 4
  %94 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %92, i32 %93)
  store i32 %94, i32* %2, align 4
  br label %244

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  switch i64 %97, label %239 [
    i64 0, label %98
    i64 1, label %183
  ]

98:                                               ; preds = %95
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.kvm_vcpu*, i32, i8*, i32, ...) @VCPU_EVENT(%struct.kvm_vcpu* %99, i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %103, i32 %105)
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @KVM_S390_PFAULT_TOKEN_INVALID, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %98
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 8, i32* %122, align 4
  store i32 0, i32* %2, align 4
  br label %244

123:                                              ; preds = %98
  %124 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %125, %127
  %129 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 7
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ne i64 %140, -9223372036854775808
  br i1 %141, label %142, label %146

142:                                              ; preds = %137, %132, %123
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = load i32, i32* @PGM_SPECIFICATION, align 4
  %145 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %143, i32 %144)
  store i32 %145, i32* %2, align 4
  br label %244

146:                                              ; preds = %137
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @kvm_is_error_gpa(i32 %149, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = load i32, i32* @PGM_ADDRESSING, align 4
  %157 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %155, i32 %156)
  store i32 %157, i32* %2, align 4
  br label %244

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %162 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %172 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 8
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %175 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 0, i32* %182, align 4
  store i32 0, i32* %5, align 4
  br label %242

183:                                              ; preds = %95
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %185 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (%struct.kvm_vcpu*, i32, i8*, i32, ...) @VCPU_EVENT(%struct.kvm_vcpu* %184, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.prs_parm, %struct.prs_parm* %4, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199, %195, %191, %183
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %205 = load i32, i32* @PGM_SPECIFICATION, align 4
  %206 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %204, i32 %205)
  store i32 %206, i32* %2, align 4
  br label %244

207:                                              ; preds = %199
  %208 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %209 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %208, i32 0, i32 1
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %7, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 0, i32* %216, align 4
  %217 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %218 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @KVM_S390_PFAULT_TOKEN_INVALID, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %207
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %225 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %224, i32 0, i32 1
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* %7, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 4, i32* %232, align 4
  br label %238

233:                                              ; preds = %207
  %234 = load i32, i32* @KVM_S390_PFAULT_TOKEN_INVALID, align 4
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %236 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  br label %238

238:                                              ; preds = %233, %223
  store i32 0, i32* %5, align 4
  br label %242

239:                                              ; preds = %95
  %240 = load i32, i32* @EOPNOTSUPP, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %239, %238, %158
  %243 = load i32, i32* %5, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %242, %203, %154, %142, %113, %91, %75, %54
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, ...) #1

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @read_guest(%struct.kvm_vcpu*, i32, i64, %struct.prs_parm.0*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_is_error_gpa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
